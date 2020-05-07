class Plant < ApplicationRecord 
    has_many :orders 
    has_many :users, through: :orders 
    has_many :tools, through: :orders 
    has_many :locations, through: :orders

    def self.create_plant(id)
        beginning = "https://trefle.io/api/plants/"
        my_key = ENV["APIKEY"]
        ending = "/?token"
        plant_info = JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))
        # plant = Plant.create(
        #     common_name: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["common_name"],
        #     scientific_name: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["scientific_name"],
        #     temperature_minimum: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["temperature_minimum"]["deg_f"],
        #     precipitation_minimum: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["precipitation_minimum"]["cm"],
        #     precipitation_maximum: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["precipitation_maximum"]["cm"],
        #     moisture_use: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["main_species"]["growth"]["moisture_use"],
        #     serial_id: JSON.parse(RestClient.get("#{beginning}#{id}#{ending}#{my_key}"))["id"],
        #     weight: 1, 
        #     price: nil )
            Plant.create(
                common_name: JSON.parse(RestClient.get("#{api_beginning}#{id}#{api_end}#{my_key}&common_name=#{common_name}"))["common_name"],
                scientific_name: plant_info["scientific_name"],
                temperature_minimum: plant_info["main_species"]["growth"]["temperature_minimum"]["deg_f"],
                percipitation_minimum: plant_info["main_species"]["growth"]["precipitation_minimum"]["cm"],
                percipitation_maximum: plant_info["main_species"]["growth"]["precipitation_maximum"]["cm"],
                moisture_use: plant_info["main_species"]["growth"]["moisture_use"],
                serial_id: plant_info["id"],
                weight: 1,
                price: nil)
    end

end 