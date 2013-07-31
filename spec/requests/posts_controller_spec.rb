require 'spec_helper'

describe "PostsController" do

  # page loads with no arguments
  describe "GET /posts_controller" do
    it " - page loads with no arguments" do
      get posts_path
      response.status.should be(200)
    end
  end

end
