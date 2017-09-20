class UpdateItemsTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :craftable_from_recipe, :craftable
    rename_column :items, :usable_as_weapon, :weapon
    rename_column :items, :dropped_in_the_game, :drop_item
    rename_column :items, :chance_of_being_dropped, :drop_possibility
    rename_column :items, :conceived_by_user, :user_defined

    add_column :items, :item_type, :string

    add_column :items, :food, :boolean
    add_column :items, :food_id, :integer

    add_column :items, :medicine, :boolean
    add_column :items, :medicine_id, :integer

    add_column :items, :raw_material_id, :integer
    add_column :items, :processed_material_id, :integer

    change_column :items, :weapon_type, :string
  end
end
