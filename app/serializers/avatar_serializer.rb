class AvatarSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :user_id, :avatar
  def avatar
    if object.avatar.attached?
      {
        url: rails_blob_url(object.avatar, only_path: true)
      }
    end
  end
end
