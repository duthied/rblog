require 'spec_helper'

describe "CommentsControllers" do

  describe "GET /commenets_controller" do
    it " - page loads with no arguments" do
      get comments_path
      response.status.should be(200)
    end
  end

end
