class OrdersController < ApplicationController
    def index 
        @orders = Order.all 
    end 

    def show 
        @order = Order.find(params[:id]) 
    end 

    def new 
        @order = Order.new 
        @locations = Location.all 
        @users = User.all 
    end 

    def create 
        @order = Order.create(order_params) 
        redirect_to order_path(@order) 
    end 

    def edit 
        @order = Order.find(params[:id]) 
        @locations = Location.all 
        @users = User.all 
    end 

    def update 
        @order = Order.find(params[:id]) 
        @order.update(order_params)
        redirect_to order_path(@order) 
    end 

    def destroy 
        @order = Order.find(params[:id]) 
        @order.destroy 
        redirect_to orders_url 
    end 

    private 

    def order_params 
        params.require(:order).permit(:date, :arrival_estimate, :location_id, :user_id, :total_price, :tax, :shipping_fee, :weight, :order_status) 
    end 
end
