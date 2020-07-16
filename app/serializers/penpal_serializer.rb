class PenpalSerializer < ActiveModel::Serializer
  attributes :name, :city, :email, :image_url
  belongs_to :user
end
