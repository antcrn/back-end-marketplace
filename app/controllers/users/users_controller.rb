class UsersController < ApplicationController
  def show
    render json: @avatar
  end
end