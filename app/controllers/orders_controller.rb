class OrdersController < ApplicationController
    def index 
        @user = current_user
        @orders = @user.orders 
    end 

    def show 
        @order = Order.find(params[:id]) 
    end 

    def new 
        @users = [] 
        @users << current_user 
        @plants = Plant.all 
        @tools = Tool.all
        @order = Order.new 
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
        params.require(:order).permit(:date, :arrival_estimate, :location_id, :user_id, :plant_id, :tool_id, :total_price, :tax, :shipping_fee, :weight, :order_status) 
    end 
end
