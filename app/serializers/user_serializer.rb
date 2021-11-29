class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :email, :password, :first_name, :last_name, :phone, :admin, :username, :avatar
  def avatar
    if object.avatar.attached?
      {
        url: rails_blob_url(object.avatar, only_path: true)
      }
    end
  end
end
