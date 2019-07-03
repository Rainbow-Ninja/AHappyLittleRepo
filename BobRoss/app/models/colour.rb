class Colour < ApplicationRecord
    has_many :colours_paintings
    has_many :paintings, through: :colours_paintings
end
