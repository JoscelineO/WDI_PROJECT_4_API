class AssetSerializer < ActiveModel::Serializer
  attributes :id, :url, :x_position, :y_position
  has_one :moodboard
end
