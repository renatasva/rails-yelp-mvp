# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:          'Dishoom',
    phone_number:  '00232902392032',
    address:       '7 Boundary St, London E2 7JE',
    category:      'italian',
  },
  {
    name:         'Pizza East',
    phone_number:  '002389038928989',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:      'japanese',
  },
  {
    name:          'Salad Bar',
    phone_number:  '00424374333032',
    address:       '45 East St, London W1 443',
    category:      'belgian',
  },
  {
    name:          'La Creppe',
    phone_number:  '0023428302032',
    address:       '543 Squires Lane, London N2 4SE',
    category:      'french',
  },
  {
    name:          'Ching Wao',
    phone_number:  '0023290008032',
    address:       '1 Bank St, London EC1 N54',
    category:      'chinese',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
