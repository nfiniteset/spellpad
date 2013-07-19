# == Schema Information
#
# Table name: spells
#
#  id                         :integer          not null, primary key
#  name                       :string(255)
#  altname                    :string(255)
#  school                     :string(255)
#  subschool                  :string(255)
#  descriptor                 :string(255)
#  spellcraft_dc              :string(255)
#  level                      :string(255)
#  components                 :text
#  casting_time               :string(255)
#  range                      :string(255)
#  target                     :string(255)
#  area                       :string(255)
#  effect                     :string(255)
#  duration                   :string(255)
#  saving_throw               :string(255)
#  spell_resistance           :string(255)
#  short_description          :string(255)
#  to_develop                 :text
#  material_components        :text
#  arcane_material_components :string(255)
#  focus                      :text
#  xp_cost                    :text
#  arcane_focus               :string(255)
#  wizard_focus               :string(255)
#  verbal_components          :string(255)
#  sorcerer_focus             :string(255)
#  bard_focus                 :string(255)
#  cleric_focus               :string(255)
#  druid_focus                :string(255)
#  reference                  :string(255)
#  created_at                 :datetime
#  updated_at                 :datetime
#

class Spell < ActiveRecord::Base
  has_many :spell_levels
  has_many :spell_classes, through: :spell_levels

  def properties
    hidden_properties = %w(id name altname level descriptor created_at updated_at)
    hidden_properties += blank_properties
    attributes.keys - hidden_properties
  end

  private

  def blank_properties
    attributes.keys.map do |prop|
      self.send(prop) == 'None' ? prop : nil
    end
  end
end
