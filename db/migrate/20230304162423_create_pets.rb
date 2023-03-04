class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :color
      t.string :species
      t.integer :last_seen

      t.timestamps
    end
  end
end
