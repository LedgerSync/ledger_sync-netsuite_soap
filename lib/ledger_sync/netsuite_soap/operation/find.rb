# frozen_string_literal: true

require_relative '../operation'

module LedgerSync
  module NetsuiteSOAP
    class Operation
      class Find
        include NetsuiteSOAP::Operation::Mixin

        private

        def operate
          response_to_operation_result(
            response: client.find(
              path: ledger_resource_path
            )
          )
        end
      end
    end
  end
end
