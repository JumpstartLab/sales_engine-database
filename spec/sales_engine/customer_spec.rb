require 'spec_helper'


describe SalesEngine::Customer do

  # 1,Joey,Ondricka,2012-03-27 14:54:09 UTC,2012-03-27 14:54:09 UTC
  let(:subject) { described_class.find(id: 1) }

  its(:first_name) { should eq "Joey" }
  its(:last_name) { should eq "Ondricka" }
  its(:created_at) { should eq Time.parse("2012-03-27 14:54:09 UTC") }
  its(:updated_at) { should eq Time.parse("2012-03-27 14:54:09 UTC") }

  describe "#invoices" do
    it "returns all the invoices associated with the customer" do
      expect(subject.invoices.count).to eq 8
    end
  end

  describe "Class Methods" do

    let(:subject) { described_class }

    describe ".find_by_id" do
      it "returns the correct customer" do
        customer = subject.find_by_id(1)
        expect(customer.first_name).to eq "Joey"
      end
    end

    describe ".find_by_first_name" do
      it "returns the correct customer" do
        pending "to be written"
      end
    end

    describe ".find_by_last_name" do
      it "returns the correct customer" do
        pending "to be written"
      end
    end

  end


end