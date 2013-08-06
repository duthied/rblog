# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :role_permission do
    role_id 1
    regulator "MyString"
    conduct "MyString"
  end
end
