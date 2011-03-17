# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/schema-2.0/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.denic.de.rb'

describe Whois::Record::Parser::WhoisDenicDe, "status_available.expected" do

  before(:each) do
    file = fixture("responses", "whois.denic.de/schema-2.0/status_available.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#disclaimer" do
    it do
      @parser.disclaimer.should == nil
    end
  end
  context "#domain" do
    it do
      @parser.domain.should == "googlededewdedewdewde.de"
    end
  end
  context "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#status" do
    it do
      @parser.status.should == :available
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == true
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == false
    end
  end
  context "#created_on" do
    it do
      lambda { @parser.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should == nil
    end
  end
  context "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#registrar" do
    it do
      @parser.registrar.should == nil
    end
  end
  context "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should == []
    end
  end
  context "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should == []
    end
  end
  context "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should == []
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should == []
    end
  end
end
