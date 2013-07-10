# == Schema Information
#
# Table name: spell_domains
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class SpellDomain < ActiveRecord::Base
  has_many :spell_levels
  has_many :spells, through: :spell_levels

  def spells_at_level(level)
    spell_levels.where(level: level).map{ |l| l.spell }
  end
end
