# /spec/models/post_spec.rb
require 'spec_helper'

describe Post do

  it "is invalid without title" do
    FactoryGirl.build(:post, title: nil).should_not be_valid
  end

  it "is invalid without title length >= 5 chars" do
    FactoryGirl.build(:post, title: "one").should_not be_valid
  end

  it "should not allow duplicate titles" do
    FactoryGirl.create(:post, title: "This is Title One")
    FactoryGirl.build(:post, title: "This is Title One").should_not be_valid
  end

end