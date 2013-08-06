require 'spec_helper'

describe "role_permissions/new" do
  before(:each) do
    assign(:role_permission, stub_model(RolePermission,
      :role_id => 1,
      :regulator => "MyString",
      :conduct => "MyString"
    ).as_new_record)
  end

  it "renders new role_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", role_permissions_path, "post" do
      assert_select "input#role_permission_role_id[name=?]", "role_permission[role_id]"
      assert_select "input#role_permission_regulator[name=?]", "role_permission[regulator]"
      assert_select "input#role_permission_conduct[name=?]", "role_permission[conduct]"
    end
  end
end
