class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.boolean :craftable_from_recipe
      t.integer :recipe_id

      t.boolean :usable_as_weapon
      t.integer :weapon_id
      t.integer :weapon_type

      t.boolean :raw_material
      t.boolean :processed_material

      t.boolean :dropped_in_the_game

      t.boolean :armor

      t.string :chance_of_being_dropped
      t.boolean :conceived_by_user

      t.timestamps
    end
  end
end
