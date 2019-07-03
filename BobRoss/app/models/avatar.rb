class Avatar < ApplicationRecord
    has_many :avatars_profiles
    has_many :profiles, through: :avatars_profiles
end
