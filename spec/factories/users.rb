
FactoryBot.define do
  factory :user do
    email { "user@example.com" }
    phone_number { "0102030405" }
    description { "A sample user" }
  end
end
