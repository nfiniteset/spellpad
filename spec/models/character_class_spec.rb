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
  let(:ranger_school) { 'Ranging' }
  let(:ranger_class) { FactoryGirl.create :character_class, name: 'Ranger' }
  let(:spell_1) { FactoryGirl.create :spell, name: 'Ranger Spell', school: ranger_school }
  let!(:level_1) { FactoryGirl.create :spell_level,
                          level: 1,
                          spell: spell_1,
                          spell_class_id: ranger_class.id,
                          spell_class_type: ranger_class.class.name }
  let(:spell_2) { FactoryGirl.create :spell, name: 'Rhainger Spull', school: ranger_school }
  let!(:level_2) { FactoryGirl.create :spell_level,
                          level: 2,
                          spell: spell_2,
                          spell_class_id: ranger_class.id,
                          spell_class_type: ranger_class.class.name }

  describe '#spells_arrainged' do
    it 'returns a hash with a key for each level' do
      level_1_schools = ranger_class.spells_arrainged[1]
      level_1_spells = level_1_schools[ranger_school]
      expect(level_1_spells).to include spell_1

      level_2_schools = ranger_class.spells_arrainged[2]
      level_2_spells = level_2_schools[ranger_school]
      expect(level_2_spells).to include spell_2
    end
  end
end
