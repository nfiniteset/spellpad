require 'spec_helper'

def assigned_spells
  assigns[:spell_levels].values.flatten.map(&:spell)
end

describe SpellsController do
  describe '#GET index' do
    describe 'with a character_class_id' do
      let(:wizard_class) { FactoryGirl.create :character_class, name: 'Wizard' }
      let(:wizard_spell) { FactoryGirl.create :spell, name: 'Sparkle Pony' }
      let!(:wizard_spell_level) { FactoryGirl.create :spell_level, spell_class_id: wizard_class.id, spell_class_type: wizard_class.class.name, spell: wizard_spell, level: 1 }
      let(:bard_class) { FactoryGirl.create :character_class, name: 'Bard' }
      let(:bard_spell) { FactoryGirl.create :spell, name: 'The Bear and the Maiden Fare' }
      let!(:bard_spell_level) { FactoryGirl.create :spell_level, spell_class_id: bard_class.id, spell_class_type: bard_class.class.name, spell: bard_spell, level: 1 }

      it 'assigns spells belonging to that character class' do
        get :index, character_class_id: wizard_class.id
        expect(assigned_spells).to include wizard_spell
        expect(assigned_spells).to_not include bard_spell
      end
    end

    describe 'with a character_id' do
      it 'assigns spells known by that character'
    end
  end

  describe '#GET show' do
    let(:spell) { FactoryGirl.create :spell, name: 'The Bear and the Maiden Fare' }

    it 'assigns the spell' do
      get :show, id: spell.id
      expect(assigns[:spell]).to eq spell
    end

    it 'assigns properties' do
      get :show, id: spell.id
      expect(assigns[:properties]).to include 'school'
    end
  end
end