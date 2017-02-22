class AssetSerializer < ActiveModel::Serializer
  attributes :id, :url, :x_position, :y_position, :height, :width
  has_one :moodboard
end
