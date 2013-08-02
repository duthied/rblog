# /spec/views/post_spec.rb
require 'spec_helper'

describe "posts/index.json.rabl" do
  
  before(:each) do
    assign(:posts, [
      stub_model(Post, :title => "this post"),
      stub_model(Post, :title => "that post")
    ])
  end

  it "renders JSON template" do
    render
    expect(rendered).to match "this post"
    expect(rendered).to match "that post"
  end
  
end