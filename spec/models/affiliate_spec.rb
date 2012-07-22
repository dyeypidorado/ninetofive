require 'spec_helper'

describe Affiliate do
  it { should respond_to(:code) }
  it { should respond_to(:name) }
  it { should respond_to(:lists) }

  context "valid attributes" do
    before(:each) do
      @affiliate = FactoryGirl.build :affiliate
    end

    specify do
      expect { @affiliate.save }.to change(Affiliate, :count).by(1)
    end

    specify ".code should be created before saving" do
      @affiliate.save
      @affiliate.code.should be
    end

    specify ".code should ignore any previously set code property" do
      @affiliate.code = "something"
      @affiliate.save
      @affiliate.code.should_not == "something"
    end
  end
end

