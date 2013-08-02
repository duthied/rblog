object @post

attributes :title, :text 
#aliased attributes
attribute :created_at => :create_date
attribute :updated_at => :update_date

child :comments do
  extends "comments/index"
end

node(:url) { |post| post_path(post.id) }