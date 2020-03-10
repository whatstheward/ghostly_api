class HauntedHouse < ApplicationRecord
    has_many :user_haunted_houses
    has_many :users, through: :user_haunted_houses
    has_many :ghosts
end