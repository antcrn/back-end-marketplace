class AvatarsController < ApplicationController
  before_action :set_avatar, only: [:update, :destroy]
  before_action :authenticate_user!

  # POST /avatars
  def create
    @avatar = Avatar.new(avatar_params)
    @avatar.user_id = current_user.id
    if @avatar.save
      render json: @avatar, status: :created, location: @avatar
    else
      render json: @avatar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /avatars/1
  def update
    if @avatar.update(avatar_params)
      render json: @avatar
    else
      render json: @avatar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /avatars/1
  def destroy
    @avatar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avatar
      @avatar = Avatar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avatar_params
      params.permit(:user_avatar)
    end
end
