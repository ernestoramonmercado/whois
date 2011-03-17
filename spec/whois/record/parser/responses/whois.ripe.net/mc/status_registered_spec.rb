# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ripe.net/mc/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.ripe.net.rb'

describe Whois::Record::Parser::WhoisRipeNet, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.ripe.net/mc/status_registered.txt")
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
      lambda { @parser.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#updated_on" do
    it do
      lambda { @parser.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns.nic.mc"
      @parser.nameservers[0].ipv4.should == "195.78.6.131"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "bow.rain.fr"
      @parser.nameservers[1].ipv4.should == "194.51.3.49"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns.ripe.net"
      @parser.nameservers[2].ipv4.should == "193.0.0.194"
    end
  end
end
