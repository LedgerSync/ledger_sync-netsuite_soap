# frozen_string_literal: true

module LedgerSync
  module NetsuiteSOAP
    class SampleResource
      class Deserializer < NetsuiteSOAP::Deserializer
        attribute :ledger_id,
                  hash_attribute: 'Id'
        attribute :Name
        attribute :Email
      end
    end
  end
end
