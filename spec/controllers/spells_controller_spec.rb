require 'spec_helper'

describe SpellsController do
  describe '#GET index' do
    describe 'with a character_class_id' do
      let(:wizard_class) { FactoryGirl.create :character_class, name: 'Wizard' }
      let!(:character) { FactoryGirl.create :character, character_class: wizard_class }

      it 'assigns that character class' do
        get :index, character_class_id: wizard_class.id
        expect(assigns[:spell_class]).to eq wizard_class
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