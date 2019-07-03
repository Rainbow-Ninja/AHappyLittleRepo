class Profile < ApplicationRecord
  belongs_to :user
  has_many :avatars_profiles
  has_many :avatars, through: :avatars_profiles
end
