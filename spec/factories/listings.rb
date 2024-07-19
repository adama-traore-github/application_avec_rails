FactoryBot.define do
  factory :listing do
    user
    city
    available_beds { 3 }
    price { 100 }
    description { 'a' * 140 } # Description de 140 caractères
    has_wifi { true }
    welcome_message { 'Bienvenue chez nous !' }
  end
end
