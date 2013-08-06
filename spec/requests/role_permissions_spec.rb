require 'spec_helper'

describe "RolePermissions" do
  describe "GET /role_permissions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get role_permissions_path
      response.status.should be(200)
    end
  end
end
