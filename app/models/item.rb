class Item < ApplicationRecord
  ALLOWED_TYPES_OF_ITEMS = %w(ARMOR FOOD WEAPON MEDICINE RAW_MATERIAL DROPPED_ITEM FURNITURE TOOLS TRANSPORT USER_DEFINED)
  validate_presence_of :item_type
  validate_inclusion_of :item_type, :in => ALLOWED_TYPES_OF_ITEMS

  before_validation :infer_default_values_from_item_type

  validate_presence_of :name

  private

  def infer_default_values_from_item_type
    case item_type
    when 'FOOD'
      usable_as_food = true
    when 'WEAPON'
      usable_as_weapon = true
    when 'MEDICINE'
      usable_as_heal = true
    when 'RAW_MATERIAL'
      unedible_raw_material = true
    when 'DROPPED_ITEM'
      dropped_in_the_game = true
    end
  end
end
