# Nettoyage de la base de données actuelle
puts "Cleaning database..."
Reservation.destroy_all
Listing.destroy_all
User.destroy_all
City.destroy_all

# Création des utilisateurs
puts "Creating users..."
20.times do
  User.create(
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::Lorem.paragraph
  )
end

# Création des villes
puts "Creating cities..."
10.times do
  City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

# Création des listings
puts "Creating listings..."
50.times do
  listing = Listing.create(
    available_beds: rand(1..5),
    price: rand(50..300),
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    has_wifi: [true, false].sample,
    welcome_message: "Welcome to our listing!",
    user: User.all.sample,
    city: City.all.sample
  )

  # Création des réservations passées
  5.times do
    Reservation.create(
      start_date: Faker::Date.backward(days: 30),
      end_date: Faker::Date.backward(days: 15),
      user: User.all.sample,
      listing: listing
    )
  end

  # Création des réservations futures
  5.times do
    Reservation.create(
      start_date: Faker::Date.forward(days: 15),
      end_date: Faker::Date.forward(days: 30),
      user: User.all.sample,
      listing: listing
    )
  end
end

puts "Finished!"
