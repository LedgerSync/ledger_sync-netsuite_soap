# frozen_string_literal: true

require 'dotenv'

require 'ledger_sync/test/support'
require 'climate_control'
support :vcr

LedgerSync::Test::Support.setup('ledger_sync/netsuite_soap')

setup_client_qa_support(LedgerSync::NetSuiteSOAP::Client)
