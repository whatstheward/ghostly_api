class CreateUserHauntedHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_haunted_houses do |t|
      t.belongs_to  :user
      t.belongs_to  :haunted_house
    end
  end
end
