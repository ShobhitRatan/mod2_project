class PlantOrdersController < ApplicationController
    def index 
        @plant_orders = PlantOrder.all 
    end 

    def show 
        @plant_order = PlantOrder.find(params[:id]) 
    end 

    def new 
        @plant_order = PlantOrder.new 
        @plants = Plant.all 
        @orders = Order.all 
    end 

    def create 
        @plant_order = PlantOrder.create(plant_order_params) 
        redirect_to plant_order_path(@plant_order) 
    end 

    def edit 
        @plant_order = PlantOrder.find(params[:id]) 
        @plants = Plant.all 
        @orders = Order.all 
    end 

    def update 
        @plant_order = PlantOrder.find(params[:id]) 
        @plant_order.update(plant_order_params) 
        redirect_to plant_order_path(@plant_order) 
    end 

    def destroy 
        @plant_order = PlantOrder.find(params[:id]) 
        @plant_order.destroy 
        redirect_to plant_orders_url 
    end 

    private 

    def plant_order_params 
        params.require(:plant_order).permit(:plant_id, :order_id, :weight, :line_total) 
    end 
end
