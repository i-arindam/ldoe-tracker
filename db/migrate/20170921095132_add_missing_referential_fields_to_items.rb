class AddMissingReferentialFieldsToItems < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :craftable, :recipe

    add_column :items, :armor_id, :integer
    add_column :items, :furniture, :boolean
    add_column :items, :furniture_id, :integer
    add_column :items, :tool, :boolean
    add_column :items, :tool_id, :integer

    remove_column :items, :weapon_type, :string
  end
end
