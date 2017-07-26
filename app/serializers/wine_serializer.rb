class WineSerializer < ActiveModel::Serializer
  attributes :id, :name, :region, :winery, :varietal, :wine_type, :link, :image, :rank, :vintage, :price

  has_many :reviews
end
