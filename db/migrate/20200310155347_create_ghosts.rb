class CreateGhosts < ActiveRecord::Migration[5.2]
  def change
    create_table :ghosts do |t|
      t.string  :name
      t.date    :birth_date
      t.date    :death_date
      t.string  :bio
      t.string  :cause_of_death
      t.belongs_to  :haunted_house
    end
  end
end
