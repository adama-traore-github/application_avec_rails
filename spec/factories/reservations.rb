
FactoryBot.define do
  factory :reservation do
    start_date { 1.day.from_now }
    end_date { 2.days.from_now }
    association :user
    association :listing
  end
end
