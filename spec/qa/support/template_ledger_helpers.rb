# frozen_string_literal: true

core_qa_support :ledger_helpers
qa_support :netsuite_soap_shared_examples

module QA
  module NetsuiteSOAPHelpers
    include LedgerSync::Test::QA::LedgerHelpers

    def client_class
      LedgerSync::NetsuiteSOAP::Client
    end

    def netsuite_soap_client
      @netsuite_soap_client ||= client_class.new_from_env
    end
  end
end

RSpec.configure do |config|
  config.include QA::NetsuiteSOAPHelpers, qa: true
end
