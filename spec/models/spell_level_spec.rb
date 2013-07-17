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
  let(:ranger_class) { FactoryGirl.create :character_class, name: 'Ranger' }
  let!(:ranger_spell_level) { FactoryGirl.create :spell_level, level: 1, spell_class_id: ranger_class.id, spell_class_type: ranger_class.class.name }
  let(:paladin_class) { FactoryGirl.create :character_class, name: 'Paladin' }
  let!(:paladin_spell_level) { FactoryGirl.create :spell_level, level: 2, spell_class_id: paladin_class.id, spell_class_type: paladin_class.class.name }

  describe '.for_class' do
    describe 'with a valid class' do
      it 'returns a relation of spell levels martching that class' do
        expect(SpellLevel.for_class(ranger_class)).to include ranger_spell_level
        expect(SpellLevel.for_class(ranger_class)).to_not include paladin_spell_level
      end
    end
  end

  describe '.by_level' do
    it 'returns a hash with a key for each level' do
      expect(SpellLevel.by_level[1]).to include ranger_spell_level
      expect(SpellLevel.by_level[2]).to include paladin_spell_level
    end
  end
end
