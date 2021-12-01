class UsersController < ApplicationController
  def index 
    @users = User.all
    render json: @users
  end

  def show 
    @user = User.find(params[:id])
    #@real_estates = RealEstate.where(user_id: @user.id)
    render json: @user
  end


end