# frozen_string_literal: true

module LedgerSync
  module NetsuiteSOAP
    class SampleResource
      class Serializer < NetsuiteSOAP::Serializer
        attribute :Id,
                  resource_attribute: :ledger_id
        attribute :Name
        attribute :Email
      end
    end
  end
end
