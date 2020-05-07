class LocationsController < ApplicationController
    def index 
        @user = current_user
        @locations = @user.locations
    end 

    def show 
        @location = Location.find_by(params[:id])
    end

    def new 
        @location = Location.new
        @users = [] 
        @users << current_user 
    end 

    def create 
        @location = Location.create(location_params)
        redirect_to location_path(@location)
    end

    private 
    def location_params 
        params.require(:location).permit(:name, :state, :city, :country, :street, :zipcode, :apartment, :user_id)
    end
end
