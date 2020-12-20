# frozen_string_literal: true

module LedgerSync
  module NetSuiteSOAP
    class Subsidiary < NetSuiteSOAP::Resource
      attribute :name, type: LedgerSync::Type::String
      attribute :state, type: LedgerSync::Type::String
    end
  end
end
