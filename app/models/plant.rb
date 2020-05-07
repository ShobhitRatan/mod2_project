class Plant < ApplicationRecord 
    has_many :orders 
    has_many :users, through: :orders 
    has_many :tools, through: :orders 
    has_many :locations, through: :orders

    def self.create_plant(id)
        # JSON.parse(RestClient.get("https://trefle.io/api/plants/123107/?token=Z1dsRU13S2pibDFhbFJrWm1nZTlNZz09"))
        api_beginning = "https://trefle.io/api/plants/"
        api_end = "/?token="
        my_key = "Z1dsRU13S2pibDFhbFJrWm1nZTlNZz09"

        plant_info = JSON.parse(RestClient.get("#{api_beginning}#{id}#{api_end}#{my_key}"))
        
        Plant.create(price: rand(1..1000),
        weight: rand(1..10000),
        common_name: JSON.parse(RestClient.get("#{api_beginning}#{id}#{api_end}#{my_key}"))["common_name"],
        scientific_name: plant_info["scientific_name"],
        temperature_minimum: plant_info["main_species"]["growth"]["temperature_minimum"]["deg_f"],
        precipitation_minimum: plant_info["main_species"]["growth"]["precipitation_minimum"]["cm"],
        precipitation_maximum: plant_info["main_species"]["growth"]["precipitation_maximum"]["cm"],
        moisture_use: plant_info["main_species"]["growth"]["moisture_use"],
        serial: id)
  
    end

end 