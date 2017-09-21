class Item < ApplicationRecord
  ALLOWED_TYPES_OF_ITEMS = %w(ARMOR CRAFTABLE FOOD WEAPON MEDICINE RAW_MATERIAL PROCESSED_MATERIAL DROPPED_ITEM FURNITURE TOOLS USER_DEFINED)
  validates_presence_of :item_type
  validates_inclusion_of :item_type, :in => ALLOWED_TYPES_OF_ITEMS

  before_validation :infer_default_values_from_item_type

  validates_presence_of :name

  # Validations to ensure there are references to the actual items
  validate :must_have_weapon, :if => :weapon?
  validate :must_have_recipe, :if => :craftable?
  validate :must_have_raw_material, :if => :raw_material?
  validate :must_have_processed_material, :if => :processed_material?
  validate :must_have_armor, :if => :armor?
  validate :must_have_food, :if => :food?
  validate :must_have_medicine, :if => :medicine?


  private

  def infer_default_values_from_item_type
    case item_type
    when 'ARMOR'
      armor = true
    when 'CRAFTABLE'
      craftable = true
    when 'FOOD'
      food = true
    when 'WEAPON'
      weapon = true
    when 'MEDICINE'
      medicine = true
    when 'RAW_MATERIAL'
      raw_material = true
    when 'PROCESSED_MATERIAL'
      processed_material = true
    when 'DROPPED_ITEM' # needs  rethink. Maybe this can be a column on item, indicating which items are dropped v/s craftable
      drop_item = true
    when 'FURNITURE'
      furniture = true
    when 'TOOLS' # could also be a column on item
      tool = true
    when 'USER_DEFINED'
      user_defined = true
    end
  end

  def must_have_weapon
    errors.add(:item_type, :must_have_weapon) unless weapon_id.present?
  end
end
