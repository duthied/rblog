require 'spec_helper'

describe "role_permissions/edit" do
  before(:each) do
    @role_permission = assign(:role_permission, stub_model(RolePermission,
      :role_id => 1,
      :regulator => "MyString",
      :conduct => "MyString"
    ))
  end

  it "renders the edit role_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", role_permission_path(@role_permission), "post" do
      assert_select "input#role_permission_role_id[name=?]", "role_permission[role_id]"
      assert_select "input#role_permission_regulator[name=?]", "role_permission[regulator]"
      assert_select "input#role_permission_conduct[name=?]", "role_permission[conduct]"
    end
  end
end
