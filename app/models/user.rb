class User < ApplicationRecord
has_many :user_haunted_houses
has_many :haunted_houses, through: :user_haunted_houses
end