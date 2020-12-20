# frozen_string_literal: true

require 'spec_helper'

support :netsuite_soap_helpers
support :operation_helpers

RSpec.describe LedgerSync::NetSuiteSOAP::Subsidiary::Operations::Create, type: :feature do
  include NetSuiteSOAPHelpers
  include OperationHelpers

  let(:resource) do
    LedgerSync::NetSuiteSOAP::Subsidiary.new(
      {
        external_id: 'sub_123',
        name: 'Test subsidiary',
        state: 'CA'
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

    it { expect_valid(operation: initialized_operation) }
    it 'creates', vcr: true do
      VCR.use_cassette('netsuite_soap/subsidiaries/create') do
        expect(subject).to be_a(LedgerSync::OperationResult::Success)
        expect(subject.resource.ledger_id).to eq('123')
      end
    end
  end
end
