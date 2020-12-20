# frozen_string_literal: true

require 'spec_helper'

support :netsuite_soap_helpers
support :operation_helpers

RSpec.describe LedgerSync::NetSuiteSOAP::Customer::Operations::Create, type: :feature do
  include NetSuiteSOAPHelpers
  include OperationHelpers

  let(:resource) do
    resource_class = LedgerSync::NetSuiteSOAP::Customer
    resource_class.new(
      {
        external_id: :ext_id,
        ledger_id: nil,
        # attributes
        email: 'test@example.com',
        name: 'Sample Customer',
        subsidiary: resource_class.resource_attributes[:subsidiary].type.resource_class.new(
          ledger_id: 1003
        )
      }
    )
  end

  let(:initialized_operation) { described_class.new(**input) }

  let(:input) do
    {
      client: netsuite_soap_client,
      resource: resource
    }
  end

  context '#perform' do
    subject { described_class.new(**input).perform }

    it { expect(initialized_operation).to be_valid }
    it 'creates', vcr: true do
      VCR.use_cassette('netsuite_soap/customers/create') do
        expect(subject).to be_a(LedgerSync::OperationResult::Success)
        expect(subject.resource.ledger_id).to eq('123')
      end
    end
  end
end
