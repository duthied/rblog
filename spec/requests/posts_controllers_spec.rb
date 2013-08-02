# /spec/requests/posts_controllers_spec.rb
require 'spec_helper'

describe PostsController do

  context "API" do

    describe "GET 'posts'" do
      before do
        get posts_path, :format => :json
      end

      it "should be successful" do
        response.should be_success
      end

      it "should retrieve a content-type of json" do
        response.header['Content-Type'].should include 'application/json'
      end
    end

    describe "GET 'post'" do
      before do
        @post = FactoryGirl.create(:post, title: "This is Title One")
        get post_path(@post.id), :format => :json
      end

      it "should be successful" do
        response.should be_success
      end

      it "should retrieve a content-type of json" do
        response.header['Content-Type'].should include 'application/json'
      end
    end

  end # end API context

  

end