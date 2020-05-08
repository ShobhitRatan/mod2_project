class UsersController < ApplicationController
    def index 
        @users = User.all 
    end 
    
    def show 
        if @user = (User.find_by(id: session[:user_id])
            render user_path(@user)
        else 
            redirect_to plants_path
        end
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        return redirect_to controller: 'users', action: 'new' unless @user.save 
        session[:user_id] = @user.id 
        redirect_to user_path(@user) 
    end
    

    def edit 
        @user = User.find(params[:id]) 
    end 

    def update 
        @user = User.find(params[:id]) 
        @user.update(user_params) 
        redirect_to user_path(@user) 
    end 

    def destroy 
        @user = User.find(params[:id]) 
        @user.destroy 
        redirect_to plants_url 
    end 

    private 

    def user_params 
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
