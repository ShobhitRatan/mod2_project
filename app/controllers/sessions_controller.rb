class SessionsController < ApplicationController
  def new
  end

  def create 
    user = User.find_by(name: params[:user][:name]) 
    user = user.try(:authenticate, params[:user][:password]) 
    return redirect_to(controller: 'sessions', action: 'new') unless user 
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = user.id 
      redirect_to user_path(@user) 
    else  
      redirect_to plants_path 
    end 
    redirect_to controller: 'welcome', action: 'home' 
  end 

  def destroy 
    session.delete :user_id 
    redirect_to root_url  
  end 
end
