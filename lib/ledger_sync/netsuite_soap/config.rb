# frozen_string_literal: true

require_relative 'client'

args = {
  base_module: LedgerSync::NetsuiteSOAP,
  root_path: 'ledger_sync/netsuite_soap'
}

LedgerSync.register_ledger(:netsuite_soap, args) do |config|
  config.name = 'NetsuiteSOAP'
end
