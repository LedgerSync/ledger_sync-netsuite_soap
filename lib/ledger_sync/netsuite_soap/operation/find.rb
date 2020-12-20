# frozen_string_literal: true

require_relative '../operation'

module LedgerSync
  module NetSuiteSOAP
    class Operation
      class Find
        include NetSuiteSOAP::Operation::Mixin
      end
    end
  end
end
