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

require 'spec_helper'

describe Spell do
  let(:spell_attrs) do
    {
      school: 'Arcane',
      cleric_focus: 'None',
      created_at: Date.yesterday,
      updated_at: Date.today
    }
  end
  let(:spell) { FactoryGirl.build :spell, spell_attrs }

  describe '#properties' do
    it 'returns properties to display' do
      expect(spell.properties).to include 'school'
    end

    it 'excludes properties set to "None"' do
      expect(spell.properties).to_not include 'cleric_focus'
    end

    it 'excludes boilerplate properties' do
      expect(spell.properties).to_not include 'id'
      expect(spell.properties).to_not include 'created_at'
      expect(spell.properties).to_not include 'updated_at'
    end
    
  end
end
