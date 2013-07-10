# == Schema Information
#
# Table name: spells
#
#  id                         :integer          not null, primary key
#  name                       :string           not null
#  altname                    :string
#  school                     :string
#  subschool                  :string
#  descriptor                 :string
#  spellcraft_dc              :string
#  level                      :string
#  components                 :text
#  casting_time               :string
#  range                      :string
#  target                     :string
#  area                       :string
#  effect                     :string
#  duration                   :string
#  saving_throw               :string
#  spell_resistance           :string
#  short_description          :string
#  to_develop                 :text
#  material_components        :text
#  arcane_material_components :string
#  focus                      :text
#  description                :text
#  xp_cost                    :text
#  arcane_focus               :string
#  wizard_focus               :string
#  verbal_components          :string
#  sorcerer_focus             :string
#  bard_focus                 :string
#  cleric_focus               :string
#  druid_focus                :string
#  full_text                  :text
#  reference                  :string
#

class Spell < ActiveRecord::Base
  has_many :spell_levels
  has_many :spell_domains, through: :spell_levels
end
