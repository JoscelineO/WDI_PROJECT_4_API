class AssetSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_one :moodboard
end
