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

  def spells_arrainged
    spell_levels
        .includes(:spell)
        .order(:level, 'spells.school')
        .group_by(&:level)
        .map do |level_number, spell_levels|
          { level_number => spell_levels.map(&:spell).group_by(&:school) }
        end.reduce({}, :merge)
  end
end
