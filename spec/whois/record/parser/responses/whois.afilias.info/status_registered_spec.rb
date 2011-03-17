# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.afilias.info/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.afilias.info.rb'

describe Whois::Record::Parser::WhoisAfiliasInfo, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.afilias.info/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#disclaimer" do
    it do
      @parser.disclaimer.should == "Access to INFO WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the Afilias registry database. The data in this record is provided by Afilias Limited for informational purposes only, and Afilias does not guarantee its accuracy.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Afilias reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy."
    end
  end
  context "#domain" do
    it do
      @parser.domain.should == "google.info"
    end
  end
  context "#domain_id" do
    it do
      @parser.domain_id.should == "D37288-LRMS"
    end
  end
  context "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#status" do
    it do
      @parser.status.should == ["CLIENT DELETE PROHIBITED", "CLIENT TRANSFER PROHIBITED", "CLIENT UPDATE PROHIBITED"]
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
      @parser.created_on.should == Time.parse("2001-07-31 23:57:50 UTC")
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2009-03-05 22:39:19 UTC")
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2010-07-31 23:57:50 UTC")
    end
  end
  context "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == "R151-LRMS"
      @parser.registrar.name.should         == "Markmonitor Inc."
      @parser.registrar.organization.should == "Markmonitor Inc."
    end
  end
  context "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should           == "mmr-32097"
      @parser.registrant_contacts[0].name.should         == "DNS Admin"
      @parser.registrant_contacts[0].organization.should == "Google Inc."
      @parser.registrant_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.registrant_contacts[0].city.should         == "Mountain View"
      @parser.registrant_contacts[0].zip.should          == "94043"
      @parser.registrant_contacts[0].state.should        == "CA"
      @parser.registrant_contacts[0].country_code.should == "US"
      @parser.registrant_contacts[0].phone.should        == "+1.6506234000"
      @parser.registrant_contacts[0].fax.should          == "+1.6506188571"
      @parser.registrant_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  context "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should           == "mmr-32097"
      @parser.admin_contacts[0].name.should         == "DNS Admin"
      @parser.admin_contacts[0].organization.should == "Google Inc."
      @parser.admin_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.admin_contacts[0].city.should         == "Mountain View"
      @parser.admin_contacts[0].zip.should          == "94043"
      @parser.admin_contacts[0].state.should        == "CA"
      @parser.admin_contacts[0].country_code.should == "US"
      @parser.admin_contacts[0].phone.should        == "+1.6506234000"
      @parser.admin_contacts[0].fax.should          == "+1.6506188571"
      @parser.admin_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  context "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should           == "mmr-32097"
      @parser.technical_contacts[0].name.should         == "DNS Admin"
      @parser.technical_contacts[0].organization.should == "Google Inc."
      @parser.technical_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      @parser.technical_contacts[0].city.should         == "Mountain View"
      @parser.technical_contacts[0].zip.should          == "94043"
      @parser.technical_contacts[0].state.should        == "CA"
      @parser.technical_contacts[0].country_code.should == "US"
      @parser.technical_contacts[0].phone.should        == "+1.6506234000"
      @parser.technical_contacts[0].fax.should          == "+1.6506188571"
      @parser.technical_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].should == _nameserver.new(:name => "ns1.google.com")
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].should == _nameserver.new(:name => "ns2.google.com")
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].should == _nameserver.new(:name => "ns3.google.com")
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].should == _nameserver.new(:name => "ns4.google.com")
    end
  end
end
