# == Schema Information
#
# Table name: spell_levels
#
#  id               :integer          not null, primary key
#  spell_id         :integer
#  spell_class_id   :integer
#  spell_class_type :string(255)
#  level            :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class SpellLevel < ActiveRecord::Base
  belongs_to :spell_class, polymorphic: true
  belongs_to :spell

  validates_presence_of :level, :spell_class_type, :spell_class_id, :spell_id

  def self.for_class(spell_class)
    where(spell_class_id: spell_class.id, spell_class_type: spell_class.class.name)
  end

  def self.by_level
    order(:level).group_by(&:level)
  end
end
