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

# def add_plant(id)
# api_beginning = "https://trefle.io/api/plants/"
# api_end = "/?token="
# my_key = ENV["APIKEY"]
# plant_info = JSON.parse(RestClient.get("#{api_beginning}#{id}#{api_end}#{my_key}"))
# plant["#{nickname}"] = Plant.create(nickname: nickname,
#                 common_name: JSON.parse(RestClient.get("#{api_beginning}#{id}#{api_end}#{my_key}&common_name=#{common_name}"))["common_name"],
#                 scientific_name: plant_info["scientific_name"],
#                 temperature_minimum: plant_info["main_species"]["growth"]["temperature_minimum"]["deg_f"],
#                 percipitation_minimum: plant_info["main_species"]["growth"]["precipitation_minimum"]["cm"],
#                 percipitation_maximum: plant_info["main_species"]["growth"]["precipitation_maximum"]["cm"],
#                 moisture_use: plant_info["main_species"]["growth"]["moisture_use"],
#                 serial: id)
# end

shovel = Tool.create(name: "shovel", description: "Used for digging", weight:5)
plow = Tool.create(name: "plow", description: "Used to soil", weight: 7)
hoe = Tool.create(name: "hoe", description: "Used to till the soil", weight: 5)
watering_can = Tool.create(name: "watering can", description: "Used to water plants evenly", weight: 1)
hose = Tool.create(name: "hose", description: "used to water plants", weight: 2)
stake = TOol.create(name: "stake", description: "used for aid in vertical growth", weight: 1)











