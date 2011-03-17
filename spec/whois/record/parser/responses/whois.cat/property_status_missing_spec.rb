# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cat/property_status_missing.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.cat.rb'

describe Whois::Record::Parser::WhoisCat, "property_status_missing.expected" do

  before(:each) do
    file = fixture("responses", "whois.cat/property_status_missing.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      @parser.status.should == nil
    end
  end
end
