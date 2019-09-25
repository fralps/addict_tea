# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
		password: Faker::Internet.password)

	# Puts to show every time an user is created
	puts "User created".green
end

20.times do

	tea = Tea.create!(
		name: Faker::Coffee.blend_name,
		fermentation: ["Thé blanc", "Thé vert", "Thé Oolong", "Thé noir", "Matcha"].sample,
		infusion_time: rand(1..6),
		location: Faker::Address.city,
		brand: Faker::Company.name,
		description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
		grade: rand(1..5),
		user_id: rand(1..10))

	# Puts to show every time a tea is added
	puts "Tea added".blue
end

# We create a user with our email and password
user = User.create!(
		first_name: "François",
		last_name: "Loupias",
		email: "admin@yopmail.com",
		password: "admin1234")

puts "-----------------------------".green
puts "------- Admin created! ------".green
puts "-----------------------------".green

puts "Access to the admin account :".green
puts "Login: admin@yopmail.com".green
puts "Password: admin1234".green
puts "-----------------------------".green