class CreateHauntedHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :haunted_houses do |t|
      t.string  :name
      t.string  :street_address
      t.string  :city
      t.string  :state
      t.integer :latitude
      t.integer :longitude
      t.integer :year_built
      t.string  :history
    end
  end
end
