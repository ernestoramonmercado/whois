# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cnnic.cn/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.cnnic.cn.rb'

describe Whois::Record::Parser::WhoisCnnicCn, "status_available.expected" do

  before(:each) do
    file = fixture("responses", "whois.cnnic.cn/status_available.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#disclaimer" do
    it do
      lambda { @parser.disclaimer }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#domain" do
    it do
      @parser.domain.should == nil
    end
  end
  context "#domain_id" do
    it do
      @parser.domain_id.should == nil
    end
  end
  context "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#status" do
    it do
      @parser.status.should == []
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
      @parser.created_on.should == nil
    end
  end
  context "#updated_on" do
    it do
      lambda { @parser.updated_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should == nil
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
      lambda { @parser.technical_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should == []
    end
  end
  context "#reserved?" do
    it do
      @parser.reserved?.should == false
    end
  end
end
