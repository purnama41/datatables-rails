# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
1000.times do 
Loan.create(business_name: Faker::Company.name, 
                    description: Faker::Company.bs,
                    expiry_date: Date.today + rand(1..30),
                    duration: rand(1..30),
                    amount: rand(1..100) * 1000000,
                    owner: Faker::Name.name )


User.create(name: Faker::Name.name, 
                    phone: Faker::PhoneNumber.phone_number,
                    address: Faker::Address.city)
end

