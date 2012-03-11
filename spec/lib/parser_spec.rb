require 'spec_helper'

describe Parser do
  describe "initializing" do
    let(:proper_url) { "http://www.bodypak.pl/animal/60-universal-nutrition-animal-pak-44-sasz.html" }
    let(:reader) { Bodypak.new }

    def create_parser_and_check_url url
      p = Parser.new url, reader
      p.url.should eql proper_url
    end

    it "should have proper url, while full address is provided" do
      create_parser_and_check_url proper_url
    end

    it "should have proper url, while no protocol is set" do
      create_parser_and_check_url proper_url.gsub("http://", "")
    end

    it "should have proper url, while no protocol, and no domain is set" do
      url = proper_url.gsub "http://www.bodypak.pl", ""
      create_parser_and_check_url url

      url[0] = ""
      create_parser_and_check_url url
    end
  end
end
