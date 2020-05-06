class Plant < ApplicationRecord 
    has_many :orders
    has_many :plant_orders
    has_many :locations, through: :orders 
    has_many :tools_orders, through: :orders 
    has_many :users, through: :orders 

    def self.create_plant(id)
        beginning = "https://trefle.io/api/plants/"
        my_key = ENV["APIKEY"]
        ending = "/?token"
        plant = Plant.create(
            common_name: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["common_name"],
            scientific_name: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["scientific_name"],
            temperature_minimum: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["temperature_minimum"]["deg_f"],
            precipitation_minimum: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["precipitation_minimum"]["cm"],
            precipitation_maximum: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["precipitation_maximum"]["cm"],
            moisture_use: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["moisture_use"],
            serial_id: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["id"],
            weight: 1, 
            price: nil )
        end

end 