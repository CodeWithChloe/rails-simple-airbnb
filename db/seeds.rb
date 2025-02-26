# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

flats = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Charming Studio in Paris',
    address: '15 Rue de Rivoli, 75004 Paris, France',
    description: 'Cozy and charming studio in the heart of Paris, perfect for couples. Walking distance to major attractions.',
    price_per_night: 90,
    number_of_guests: 2
  },
  {
    name: 'Modern Apartment in New York',
    address: '500 5th Ave, New York, NY 10110, USA',
    description: 'A sleek, modern apartment in the heart of Manhattan with breathtaking skyline views.',
    price_per_night: 200,
    number_of_guests: 4
  },
  {
    name: 'Beachfront Villa in Bali',
    address: 'Jl. Pantai Berawa, Canggu, Bali, Indonesia',
    description: 'Luxury villa with a private pool and direct beach access. Perfect for a tropical getaway.',
    price_per_night: 150,
    number_of_guests: 6
  },
  {
    name: 'Cozy Mountain Cabin in Switzerland',
    address: 'Alpine Road 12, Zermatt, Switzerland',
    description: 'A warm and cozy cabin in the Swiss Alps, ideal for ski lovers and nature enthusiasts.',
    price_per_night: 120,
    number_of_guests: 5
  }
]


flats.each do |flat|
  flat = Flat.create!(flat)
  puts "Created #{flat.name}"
end

puts "Finished!"
