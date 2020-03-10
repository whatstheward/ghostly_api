class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :bio
  has_many :haunted_houses
end
