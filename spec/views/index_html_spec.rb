# /spec/views/post_spec.rb
require 'spec_helper'

describe "posts/index.html.erb" do
  
  before(:each) do
    assign(:posts, [
      stub_model(Post, :title => "this post"),
      stub_model(Post, :title => "that post")
    ])
  end

  it "renders HTML template" do
    render
    expect(rendered).to match "this post".upcase
    expect(rendered).to match "that post".upcase
  end

end