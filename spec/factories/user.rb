FactoryBot.define do
  factory :user do 
    email { Faker::Internet.email }
    first_name { 'name' }
    last_name { 'name' }
    password { 'password'}
  end
end
