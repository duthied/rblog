require 'spec_helper'

describe "role_permissions/index" do
  before(:each) do
    assign(:role_permissions, [
      stub_model(RolePermission,
        :role_id => 1,
        :regulator => "Regulator",
        :conduct => "Conduct"
      ),
      stub_model(RolePermission,
        :role_id => 1,
        :regulator => "Regulator",
        :conduct => "Conduct"
      )
    ])
  end

  it "renders a list of role_permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Regulator".to_s, :count => 2
    assert_select "tr>td", :text => "Conduct".to_s, :count => 2
  end
end
