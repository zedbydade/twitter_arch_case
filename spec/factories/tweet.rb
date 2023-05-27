FactoryBot.define do
  factory :tweet do 
    body { Faker::Fantasy::Tolkien }
  end
end
