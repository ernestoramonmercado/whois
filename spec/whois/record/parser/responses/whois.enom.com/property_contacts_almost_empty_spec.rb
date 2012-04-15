# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.enom.com/property_contacts_almost_empty.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.enom.com.rb'

describe Whois::Record::Parser::WhoisEnomCom, "property_contacts_almost_empty.expected" do

  before(:each) do
    file = fixture("responses", "whois.enom.com/property_contacts_almost_empty.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(Whois::Record::Contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].name.should         == "Tony Kerr"
      @parser.registrant_contacts[0].organization.should == ""
      @parser.registrant_contacts[0].address.should      == ""
      @parser.registrant_contacts[0].city.should         == ""
      @parser.registrant_contacts[0].zip.should          == ""
      @parser.registrant_contacts[0].state.should        == ""
      @parser.registrant_contacts[0].country_code.should == "US"
      @parser.registrant_contacts[0].phone.should        == ""
      @parser.registrant_contacts[0].fax.should          == ""
      @parser.registrant_contacts[0].email.should        == ""
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(Whois::Record::Contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].name.should         == "Tony Kerr"
      @parser.technical_contacts[0].organization.should == ""
      @parser.technical_contacts[0].address.should      == ""
      @parser.technical_contacts[0].city.should         == ""
      @parser.technical_contacts[0].zip.should          == ""
      @parser.technical_contacts[0].state.should        == ""
      @parser.technical_contacts[0].country_code.should == "US"
      @parser.technical_contacts[0].phone.should        == "+1."
      @parser.technical_contacts[0].fax.should          == ""
      @parser.technical_contacts[0].email.should        == "tkerr@sportimeny.com"
    end
  end
end