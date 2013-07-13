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
end
