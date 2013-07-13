class ClericDomain < ActiveRecord::Base
  has_many :spell_levels, as: :spell_class
  has_many :spells, through: :spell_levels

  def self.find_by_name(name)
    where(name: name).first
  end
end
