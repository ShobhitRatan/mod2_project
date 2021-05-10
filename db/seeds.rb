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



Plant.destroy_all
Tool.destroy_all





shovel = Tool.create(name: "shovel", description: "Used for digging", weight:5, price: 67.00, image: "https://images.unsplash.com/photo-1571333461757-d924cd654164?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
plow = Tool.create(name: "plow", description: "Used to soil", weight: 7, price: 90.00, image: "https://images.unsplash.com/photo-1557868969-3edc1416fc53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
hoe = Tool.create(name: "hoe", description: "Used to till the soil", weight: 5, image: "https://images.unsplash.com/photo-1585483266669-f9ff856159ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
watering_can = Tool.create(name: "watering can", description: "Used to water plants evenly", weight: 1, price: 16.50, image: "https://images.unsplash.com/photo-1563115843-ff8f0e0e23ed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
hose = Tool.create(name: "hose", description: "used to water plants", weight: 2, price: 19.60, image: "https://images.unsplash.com/photo-1588501985886-2a38c5785e68?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
stake = Tool.create(name: "stake", description: "used for aid in vertical growth", weight: 1, price: 11.90, image: "https://images.unsplash.com/10/mason-jars.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")





plant1 = Plant.create(common_name: "pineapple",
scientific_name: "pineapple sci",
temperature_minimum: 68.0,
precipitation_maximum: 6.9,
precipitation_minimum: 1.8,
moisture_use: "Medium",
serial: 104800,
weight: 4,
price: 29.7,
image:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkH_21lYN45fcQLwStuGXVEVNHBIFAPWZb5gXRXLp31JP5tGOzVI3VJ0iK5w&usqp=CAc")

plant2 = Plant.create(common_name: "golden bamboo",
scientific_name: "golden bamboo sci",
temperature_minimum: 50.0,
precipitation_maximum: 3.9,
precipitation_minimum: 2.8,
moisture_use: "Low",
serial: 133482,
weight: 2,
price: 19.7,
image:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTgu6lqXJJTDCuJp9sux7H3HppOfApE9ZW0SNbarekA_xCpIJyA&usqp=CAU")

plant3 = Plant.create(common_name: "weeping willow",
scientific_name: "weeping willow sci",
temperature_minimum: 48.0,
precipitation_maximum: 9.9,
precipitation_minimum: 7.8,
moisture_use: "High",
serial: 133202,
weight: 92,
price: 903.7,
image:"https://images-na.ssl-images-amazon.com/images/I/51uvFOQvaOL._AC_SX450_.jpg")

plant4 = Plant.create(common_name: "monstera",
scientific_name: "monstera carnisa",
temperature_minimum: 68.0,
precipitation_maximum: 5.9,
precipitation_minimum: 4.8,
moisture_use: "Medium",
serial: 133208,
weight: 9,
price: 19.7,
image:"https://images.unsplash.com/photo-1545241047-6083a3684587?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")

plant5 = Plant.create(common_name: "seagrape",
scientific_name: "monstera deliciosa",
temperature_minimum: 68.0,
precipitation_maximum: 5.9,
precipitation_minimum: 4.8,
moisture_use: "Medium",
serial: 133208,
weight: 9,
price: 19.7,
image:"https://images.unsplash.com/photo-1585321747719-e5cc817c5f3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")


