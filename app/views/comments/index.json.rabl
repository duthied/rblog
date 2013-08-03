object @comment
attributes :commenter, :body
attribute :created_at => :create_date, :updated_at => :update_date

node(:links) do |comment|
  {:rel => "self",
   :href => post_comment_path(comment.post, comment)}
end