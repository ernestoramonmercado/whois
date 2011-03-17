# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.co.ca/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.co.ca.rb'

describe Whois::Record::Parser::WhoisCoCa, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.co.ca/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  context "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2005-06-25 16:03:30")
    end
  end
  context "#updated_on" do
    it do
      lambda { @parser.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2011-06-25")
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.canadawebhosting.com"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns2.canadawebhosting.com"
    end
  end
  context "#reserved?" do
    it do
      @parser.reserved?.should == false
    end
  end
end
