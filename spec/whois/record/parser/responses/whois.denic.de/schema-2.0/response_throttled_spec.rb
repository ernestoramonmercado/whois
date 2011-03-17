# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/schema-2.0/response_throttled.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.denic.de.rb'

describe Whois::Record::Parser::WhoisDenicDe, "response_throttled.expected" do

  before(:each) do
    file = fixture("responses", "whois.denic.de/schema-2.0/response_throttled.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#response_throttled?" do
    it do
      @parser.response_throttled?.should == true
    end
  end
end
