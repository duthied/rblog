require 'spec_helper'

describe PostsController do

  describe "GET 'posts API'" do
    render_views
    it "should be successful" do
      request.accept = "application/json"
      get :posts
      response.should be_success
    end
  end

end