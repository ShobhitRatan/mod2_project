class LocationsController < ApplicationController
    def index 
        @locations = Location.all
    end 

    def show 
        @location = Location.find([params[:id])
    end

    def new 
        @location = Location.new
    end 

    private 
    def location_params 
        params.require(:location).permit(:state, :city, :country, :street, :zipcode, :apartment)
    end
end
