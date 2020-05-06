# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'rest-client'
require 'json'


User.destroy_all
Plant.destroy_all
Tool.destroy_all

15.times do 
User.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, password: Faker::IDNumber.valid)   
end 



shovel = Tool.create(name: "shovel", description: "Used for digging", weight:5, price: "$67")
plow = Tool.create(name: "plow", description: "Used to soil", weight: 7, price: "$90")
hoe = Tool.create(name: "hoe", description: "Used to till the soil", weight: 5)
watering_can = Tool.create(name: "watering can", description: "Used to water plants evenly", weight: 1, price: "$16")
hose = Tool.create(name: "hose", description: "used to water plants", weight: 2, price: "$19")
stake = Tool.create(name: "stake", description: "used for aid in vertical growth", weight: 1, price: "$11")





plant1 = Plant.create(common_name: "pineapple",
scientific_name: "pineapple sci",
temperature_minimum: 68.0,
precipitation_maximum: 6.9,
precipitation_minimum: 1.8,
moisture_use: "Medium",
serial_id: 104800,
weight: 4,
price: 29.7)

plant2 = Plant.create(common_name: "golden bamboo",
scientific_name: "golden bamboo sci",
temperature_minimum: 50.0,
precipitation_maximum: 3.9,
precipitation_minimum: 2.8,
moisture_use: "Low",
serial_id: 133482,
weight: 2,
price: 19.7)

plant3 = Plant.create(common_name: "weeping willow",
scientific_name: "weeping willow sci",
temperature_minimum: 48.0,
precipitation_maximum: 9.9,
precipitation_minimum: 7.8,
moisture_use: "High",
serial_id: 133202,
weight: 92,
price: 903.7)

plant4 = Plant.create(common_name: "weeping willow",
scientific_name: "weeping willow sci",
temperature_minimum: 48.0,
precipitation_maximum: 9.9,
precipitation_minimum: 7.8,
moisture_use: "High",
serial_id: 133202,
weight: 92,
price: 903.7)

Plant.create_plant(104800)













