class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :region, :winery, :varietal, :wine_type, :link, :image, :rank, :vintage, :price, :user_vote

  has_many :reviews
end
