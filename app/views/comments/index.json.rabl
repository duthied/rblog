object @comment
attributes :commenter, :body
attribute :created_at => :create_date, :updated_at => :update_date

# node(:url) { |comment| comment_path(comment.id) }