class HauntedHouseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :history, :street_address, :city, :state, :year_built
  attribute  :show_address do |object|
    "#{object.street_address}\n
    #{object.city}, #{object.state}"
  end
  attribute :coordinates  do |object|
    [object.latitude, object.longitude]
  end
end
