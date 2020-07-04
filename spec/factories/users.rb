FactoryBot.define do
  factory :user do
	  name { Faker::Internet.username }
    email { Faker::Internet.safe_email }
    password { '123123' }
  end
end
