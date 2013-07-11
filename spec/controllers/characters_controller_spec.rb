require 'spec_helper'

describe CharactersController do
  before do
    FactoryGirl.create :character_class, name: 'Wizard'
  end

  describe 'GET index' do
    let(:character) { FactoryGirl.create :character }

    it 'is successful' do
      get :index
      expect(response).to be_success
    end

    it 'assigns characters' do
      get :index
      expect(assigns :characters).to include character
    end
  end

  describe 'GET show' do
    let(:character) { FactoryGirl.create :character }
    it 'assigns the character' do
      get :show, id: character.id
      expect(assigns :character).to eq character
    end
  end

  describe 'GET new' do
    it 'assigns a new character' do
      get :new
      expect(assigns :character).to be_a_new Character
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      let(:character_attrs) { FactoryGirl.build(:character).attributes }

      it 'creates the character' do
        expect do
          post :create, character: character_attrs
        end.to change { Character.count }.by 1
        expect(subject).to redirect_to characters_path
      end

      it 'sets the character_class to Wizard' do
        post :create, character: character_attrs.except('character_class_id')
        character = Character.last
        expect(character.character_class.name).to eq 'Wizard'
      end
    end

    describe 'with invalid params' do
      let(:character_attrs) { FactoryGirl.build(:character).attributes.except('name') }

      it 'rerenders the new page' do
        post :create, character: character_attrs
        expect(response).to render_template(:new)
      end

      it 'informs the user of the error' do
        post :create, character: character_attrs
        expect(flash[:error]).not_to be_nil
      end
    end
  end
end
