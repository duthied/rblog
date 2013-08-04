# /app/views/posts/create.json.rabl
object @post

if @post.persisted?
  extends 'posts/show'
end

node :errors do |o|
  o.errors
end