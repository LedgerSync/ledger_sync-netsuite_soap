# frozen_string_literal: true

require 'spec_helper'

support :netsuite_soap_helpers

RSpec.describe LedgerSync::NetSuiteSOAP::Client, type: :feature do
  include NetSuiteSOAPHelpers

  let(:client) { netsuite_soap_client }
end
