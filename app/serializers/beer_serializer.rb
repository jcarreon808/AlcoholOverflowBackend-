class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :ibu, :abv
  has_many :reviews
end
