class MoodboardSerializer < ActiveModel::Serializer
  attributes :id, :project_name, :brief
  has_many :assets
  has_one :user
end
