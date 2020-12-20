# frozen_string_literal: true

require 'spec_helper'

core_support :operation_shared_examples
support :netsuite_soap_helpers

RSpec.describe LedgerSync::NetSuiteSOAP::Customer::Operations::Find, vcr: true do
  include NetSuiteSOAPHelpers

  let(:client) { netsuite_soap_client }
  let(:resource) { create(:netsuite_soap_customer, ledger_id: 1837) }

  it_behaves_like 'an operation'
  it_behaves_like 'a successful operation'
end
