FactoryBot.define do
  factory :user do
    uid { Faker::Omniauth.google[:uid] }
    email { Faker::Internet.unique.safe_email }
    first_name { Faker::Name.unique.first_name}
    token { Faker::Number.hexadecimal(12) }
  end
end
