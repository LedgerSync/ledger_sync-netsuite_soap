# frozen_string_literal: true

module LedgerSync
  module NetsuiteSOAP
    class SampleResource < NetsuiteSOAP::Resource
      attribute :Name, type: Type::String
      attribute :Email, type: Type::String
    end
  end
end
