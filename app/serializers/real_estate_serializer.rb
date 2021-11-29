class RealEstateSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :name, :price, :sold, :description, :city_id, :user_id, :images
  def images
    if object.images.attached?
      {
        url: rails_blob_url(object.images, only_path: true)
      }
    end
  end
end
