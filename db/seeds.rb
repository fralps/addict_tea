# frozen_string_literal: true

# Colorize just for fun
require 'colorize'

# Faker gem
require 'faker'

# To limit the database entries
# each time we seed we delete the previous ones and we reset database's ids
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

User.destroy_all
Tea.destroy_all

10.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )

  # Puts to show every time an user is created
  puts 'User created'.green
end

# We create teas
20.times do
  tea = Tea.create!(
    name: Faker::Coffee.blend_name,
    fermentation: ['Thé blanc', 'Thé vert', 'Thé Oolong', 'Thé noir', 'Matcha'].sample,
    infusion_time: rand(1..6),
    location: Faker::Address.city,
    brand: Faker::Company.name,
    description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
    grade: rand(1..5),
    user_id: rand(1..10)
  )

  # Puts to show every time a tea is added
  puts 'Tea added'.blue
end

# We create infusions
20.times do
  infusion = Infusion.create!(
    name: Faker::Coffee.blend_name,
    infusion_time: rand(1..6),
    location: Faker::Address.city,
    brand: Faker::Company.name,
    description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
    grade: rand(1..5),
    user_id: rand(1..10)
  )

  # Puts to show every time an infusion is added
  puts 'Infusion added'.blue
end

# We create a user with our email and password
user = User.create!(
  first_name: 'François',
  last_name: 'Loupias',
  email: 'admin@yopmail.com',
  password: 'admin1234'
)

# We create teas for admin
10.times do
  tea = Tea.create!(
    name: Faker::Coffee.blend_name,
    fermentation: ['Thé blanc', 'Thé vert', 'Thé Oolong', 'Thé noir', 'Matcha'].sample,
    infusion_time: rand(1..6),
    location: Faker::Address.city,
    brand: Faker::Company.name,
    description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
    grade: rand(1..5),
    user_id: 11
  )

  # Puts to show every time a tea is added
  puts 'Tea added for admin'.blue
end

# We create infusions for admin
10.times do
  infusion = Infusion.create!(
    name: Faker::Coffee.blend_name,
    infusion_time: rand(1..6),
    location: Faker::Address.city,
    brand: Faker::Company.name,
    description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
    grade: rand(1..5),
    user_id: 11
  )

  # Puts to show every time an infusion is added
  puts 'Infusion added for admin'.blue
end

puts '-----------------------------'.green
puts '------- Admin created! ------'.green
puts '-----------------------------'.green

puts 'Access to the admin account :'.green
puts 'Login: admin@yopmail.com'.green
puts 'Password: admin1234'.green
puts '-----------------------------'.green
