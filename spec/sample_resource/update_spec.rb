# frozen_string_literal: true

require 'spec_helper'

support :netsuite_soap_shared_examples

RSpec.describe LedgerSync::NetsuiteSOAP::SampleResource::Operations::Update, operation: true do
  it_behaves_like 'a netsuite_soap operation'
end
