# == Schema Information
#
# Table name: characters
#
#  id                 :integer          not null, primary key
#  character_class_id :integer          not null
#  name               :string(255)      not null
#  created_at         :datetime
#  updated_at         :datetime
#

require 'spec_helper'

describe SpellLevel do
  let(:spell_level_number) { 3 }
  let(:ranger_school) { 'Ranging' }
  let(:ranger_class) { FactoryGirl.create :character_class, name: 'Ranger' }
  let(:ranger_spell) { FactoryGirl.create :spell, name: 'Ranger Spell', school: ranger_school }
  let!(:ranger_spell_level) { FactoryGirl.create :spell_level, level: spell_level_number, spell_class_id: ranger_class.id, spell_class_type: ranger_class.class.name, spell: ranger_spell }

  describe '#spells_by_level_and_school' do
    it 'returns a hash with a key for each level' do
      schools = ranger_class.spells_arrainged[spell_level_number]
      spells = schools[ranger_school]
      expect(spells).to include ranger_spell
    end
  end
end
