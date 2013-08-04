# /app/views/posts/index.json.rabl
collection @posts

attributes :title, :text 
#aliased attributes
attribute :created_at => :create_date
attribute :updated_at => :update_date

child :comments do
  extends "comments/show"
end

node(:links) do |post|
  {:rel => "self", :href => post_path(post.id)}
end