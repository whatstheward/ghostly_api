class UserHauntedHouse < ApplicationRecord
    belongs_to :user
    belongs_to :haunted_house
end
