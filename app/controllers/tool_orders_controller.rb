class ToolOrdersController < ApplicationController
    def index 
        @tool_orders = ToolOrder.all 
    end 

    def show 
        @tool_orders = ToolOrder.find(params[:id]) 
    end 

    def new
        @tool_order = ToolOrder.new 
        @tools = Tool.all 
        @orders = Order.all 
    end 

    def create 
        @tool_order = ToolOrder.create(tool_order_params) 
        redirect_to tool_order_path(@tool_order) 
    end 

    def edit 
        @tool_order = ToolOrder.find(params[:id]) 
        @tools = Tool.all 
        @orders = Order.all 
    end 

    def update 
        @tool_order = ToolOrder.find(params[:id]) 
        @tool_order.update(tool_order_params) 
        redirect_to tool_order_path(@tool_order) 
    end 

    def destroy 
        @tool_order = ToolOrder.find(params[:id]) 
        @tool_order.destroy 
        redirect_to tool_orders_url 
    end 

    private 

    def tool_order_params 
        params.require(:tool_order).permit(:tool_id, :order_id, :weight, :line_total) 
    end 
end
