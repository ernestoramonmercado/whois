# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.jprs.jp/jp/status_reserved.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.jprs.jp.rb'

describe Whois::Record::Parser::WhoisJprsJp, "status_reserved.expected" do

  before(:each) do
    file = fixture("responses", "whois.jprs.jp/jp/status_reserved.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      @parser.status.should == :reserved
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
      @parser.created_on.should == nil
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2001-02-21 00:00:00")
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should == nil
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should == []
    end
  end
end
