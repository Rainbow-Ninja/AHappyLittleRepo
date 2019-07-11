class Painting < ApplicationRecord
  belongs_to :profile
  has_many :colours_paintings
  has_many :colours, through: :colours_paintings
  has_one_attached :artwork
end
