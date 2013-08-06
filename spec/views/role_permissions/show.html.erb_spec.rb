require 'spec_helper'

describe "role_permissions/show" do
  before(:each) do
    @role_permission = assign(:role_permission, stub_model(RolePermission,
      :role_id => 1,
      :regulator => "Regulator",
      :conduct => "Conduct"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Regulator/)
    rendered.should match(/Conduct/)
  end
end
