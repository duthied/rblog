require "spec_helper"

describe RolePermissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/role_permissions").should route_to("role_permissions#index")
    end

    it "routes to #new" do
      get("/role_permissions/new").should route_to("role_permissions#new")
    end

    it "routes to #show" do
      get("/role_permissions/1").should route_to("role_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/role_permissions/1/edit").should route_to("role_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/role_permissions").should route_to("role_permissions#create")
    end

    it "routes to #update" do
      put("/role_permissions/1").should route_to("role_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/role_permissions/1").should route_to("role_permissions#destroy", :id => "1")
    end

  end
end
