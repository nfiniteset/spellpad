# == Schema Information
#
# Table name: character_classes
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class CharacterClass < ActiveRecord::Base
  has_many :spell_levels, as: :spell_class
  has_many :spells, through: :spell_levels

  def self.find_by_name(name)
    where(name: name).first
  end
end
