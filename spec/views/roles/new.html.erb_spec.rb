require 'spec_helper'

describe "roles/new" do
  before(:each) do
    assign(:role, stub_model(Role,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", roles_path, "post" do
      assert_select "input#role_description[name=?]", "role[description]"
    end
  end
end
