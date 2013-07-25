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

require 'spec_helper'

describe SpellLevel do
  let(:ranger_class) { FactoryGirl.create :character_class, name: 'Ranger' }
  let(:ranger_spell) { FactoryGirl.create :spell, name: 'Ranger Spell', school: 'Ranging' }
  let!(:ranger_spell_level) { FactoryGirl.create :spell_level, level: 1, spell_class_id: ranger_class.id, spell_class_type: ranger_class.class.name, spell: ranger_spell }
  let(:paladin_class) { FactoryGirl.create :character_class, name: 'Paladin' }
  let(:paladin_spell) { FactoryGirl.create :spell, name: 'Paladin Spell', school: 'Piety' }
  let!(:paladin_spell_level) { FactoryGirl.create :spell_level, level: 2, spell_class_id: paladin_class.id, spell_class_type: paladin_class.class.name }

  describe '.for_class' do
    describe 'with a valid class' do
      it 'returns a relation of spell levels martching that class' do
        expect(SpellLevel.for_class(ranger_class)).to include ranger_spell_level
        expect(SpellLevel.for_class(ranger_class)).to_not include paladin_spell_level
      end
    end
  end
end
