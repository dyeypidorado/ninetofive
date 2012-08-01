require 'spec_helper'

describe Subscriber do
  it { should respond_to(:email) }
  it { should respond_to(:name) }
  it { should respond_to(:is_subscribed?) }
  it { should respond_to(:product_list) }
  it { should respond_to(:subscribed_to_page) }
  it { should respond_to(:lists) }

  context "valid attributes" do
    subject { FactoryGirl.build :subscriber }
    it { expect { subject.save }.to change(Subscriber, :count).by(1) }
  end

  context "invalid attributes" do
    subject { FactoryGirl.build :subscriber }

    specify "blank email should not save" do
      subject.email = ""
      subject.save.should_not be
    end

    specify "blank name should not save" do
      subject.name = ""
      subject.save.should_not be
    end
  end
end
