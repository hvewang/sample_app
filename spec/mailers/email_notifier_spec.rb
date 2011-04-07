require "spec_helper"

describe EmailNotifier do
  describe "service_request" do
    let(:mail) { EmailNotifier.service_request }

    it "renders the headers" do
      mail.subject.should eq("Service request")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "host_family_application" do
    let(:mail) { EmailNotifier.host_family_application }

    it "renders the headers" do
      mail.subject.should eq("Host family application")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
