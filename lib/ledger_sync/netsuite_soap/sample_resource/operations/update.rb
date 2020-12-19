# frozen_string_literal: true

module LedgerSync
  module NetsuiteSOAP
    class SampleResource
      module Operations
        class Update < NetsuiteSOAP::Operation::Update
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:external_id).filled(:string)
              required(:ledger_id).filled(:string)
              required(:Name).maybe(:string)
              required(:Email).maybe(:string)
            end
          end
        end
      end
    end
  end
end
