class User < ApplicationRecord
  has_many :reviews
  has_many :wines, through: :reviews
  has_secure_password
end
