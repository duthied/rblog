# /spec/factories/post.rb
# require 'Faker'

FactoryGirl.define do
  
  factory :post do |p|
    p.title "Factory Created Title"
    p.text "Factory created text"
  end

end