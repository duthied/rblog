require 'spec_helper'

describe "WelcomeController" do

  describe "GET /welcome_controller" do
    it " - page loads with no arguments" do
      get welcome_controllers_path
      response.status.should be(200)
    end
  end

end
