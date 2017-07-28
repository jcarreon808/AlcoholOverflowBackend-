class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_rating
  belongs_to :user
  belongs_to :wine
end
