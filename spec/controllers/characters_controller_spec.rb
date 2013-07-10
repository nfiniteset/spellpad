require 'spec_helper'

describe CharactersController do
  before do
    @char = FactoryGirl.create :character
  end

  describe 'GET index' do
    it 'is successful' do
      get :index
      expect(response).to be_success
    end

    it 'assigns characters' do
      get :index
      expect(assigns :characters).to include @char
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
      it 'creates the character' do
        expect do
          post :create, character: { name: 'Bout' }
        end.to change { Character.count }.by 1
        expect(subject).to redirect_to characters_path
      end
    end
  end
end
