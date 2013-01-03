require "spec_helper"

describe OfficeMailer do
  describe "new_review" do
    let(:mail) { OfficeMailer.new_review }

    it "renders the headers" do
      mail.subject.should eq("New review")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
