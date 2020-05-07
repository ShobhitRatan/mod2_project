class LocationsController < ApplicationController
    def index 
        @user = User.find(params[:id])
        @locations = @user.locations
    end 

    def show 
        @location = Location.find(params[:id])
    end

    def new 
        @location = Location.new
    end 

    def create 
        @location = Location.create(location_params)
        redirect_to location_path(@location)
    end

    private 
    def location_params 
        params.require(:location).permit(:state, :city, :country, :street, :zipcode, :apartment)
    end
end
