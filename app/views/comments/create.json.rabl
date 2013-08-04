# /app/views/posts/create.json.rabl
object @comment

if @comment.persisted?
  extends 'index'
end

node :errors do |o|
  o.errors
end