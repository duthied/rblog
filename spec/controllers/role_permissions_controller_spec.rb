require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RolePermissionsController do

  # This should return the minimal set of attributes required to create a valid
  # RolePermission. As you add validations to RolePermission, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "role_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RolePermissionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all role_permissions as @role_permissions" do
      role_permission = RolePermission.create! valid_attributes
      get :index, {}, valid_session
      assigns(:role_permissions).should eq([role_permission])
    end
  end

  describe "GET show" do
    it "assigns the requested role_permission as @role_permission" do
      role_permission = RolePermission.create! valid_attributes
      get :show, {:id => role_permission.to_param}, valid_session
      assigns(:role_permission).should eq(role_permission)
    end
  end

  describe "GET new" do
    it "assigns a new role_permission as @role_permission" do
      get :new, {}, valid_session
      assigns(:role_permission).should be_a_new(RolePermission)
    end
  end

  describe "GET edit" do
    it "assigns the requested role_permission as @role_permission" do
      role_permission = RolePermission.create! valid_attributes
      get :edit, {:id => role_permission.to_param}, valid_session
      assigns(:role_permission).should eq(role_permission)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RolePermission" do
        expect {
          post :create, {:role_permission => valid_attributes}, valid_session
        }.to change(RolePermission, :count).by(1)
      end

      it "assigns a newly created role_permission as @role_permission" do
        post :create, {:role_permission => valid_attributes}, valid_session
        assigns(:role_permission).should be_a(RolePermission)
        assigns(:role_permission).should be_persisted
      end

      it "redirects to the created role_permission" do
        post :create, {:role_permission => valid_attributes}, valid_session
        response.should redirect_to(RolePermission.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved role_permission as @role_permission" do
        # Trigger the behavior that occurs when invalid params are submitted
        RolePermission.any_instance.stub(:save).and_return(false)
        post :create, {:role_permission => { "role_id" => "invalid value" }}, valid_session
        assigns(:role_permission).should be_a_new(RolePermission)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        RolePermission.any_instance.stub(:save).and_return(false)
        post :create, {:role_permission => { "role_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested role_permission" do
        role_permission = RolePermission.create! valid_attributes
        # Assuming there are no other role_permissions in the database, this
        # specifies that the RolePermission created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        RolePermission.any_instance.should_receive(:update).with({ "role_id" => "1" })
        put :update, {:id => role_permission.to_param, :role_permission => { "role_id" => "1" }}, valid_session
      end

      it "assigns the requested role_permission as @role_permission" do
        role_permission = RolePermission.create! valid_attributes
        put :update, {:id => role_permission.to_param, :role_permission => valid_attributes}, valid_session
        assigns(:role_permission).should eq(role_permission)
      end

      it "redirects to the role_permission" do
        role_permission = RolePermission.create! valid_attributes
        put :update, {:id => role_permission.to_param, :role_permission => valid_attributes}, valid_session
        response.should redirect_to(role_permission)
      end
    end

    describe "with invalid params" do
      it "assigns the role_permission as @role_permission" do
        role_permission = RolePermission.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RolePermission.any_instance.stub(:save).and_return(false)
        put :update, {:id => role_permission.to_param, :role_permission => { "role_id" => "invalid value" }}, valid_session
        assigns(:role_permission).should eq(role_permission)
      end

      it "re-renders the 'edit' template" do
        role_permission = RolePermission.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RolePermission.any_instance.stub(:save).and_return(false)
        put :update, {:id => role_permission.to_param, :role_permission => { "role_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested role_permission" do
      role_permission = RolePermission.create! valid_attributes
      expect {
        delete :destroy, {:id => role_permission.to_param}, valid_session
      }.to change(RolePermission, :count).by(-1)
    end

    it "redirects to the role_permissions list" do
      role_permission = RolePermission.create! valid_attributes
      delete :destroy, {:id => role_permission.to_param}, valid_session
      response.should redirect_to(role_permissions_url)
    end
  end

end
