FactoryBot.define do
  factory :user do
    email { Faker::Internet.safe_email }
    password { '123123' }
  end
end
