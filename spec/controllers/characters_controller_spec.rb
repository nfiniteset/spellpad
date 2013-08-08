require 'spec_helper'

describe CharactersController do
  let(:user) { FactoryGirl.create :user }
  before do
    FactoryGirl.create :character_class, name: 'Wizard'
    login_user(user)
  end

  describe 'GET index' do
    describe 'with a character' do
      let!(:character) { FactoryGirl.create :character, user: user }

      subject { get :index }

      it 'redirects to current character page' do
        expect(subject).to redirect_to character_path(user.current_character)
      end
    end

    describe 'without a character' do
      subject { get :index }

      it 'redirects to new character page' do
        expect(subject).to redirect_to new_character_path
      end
    end
  end

  describe 'GET show' do
    let!(:prev_character) { FactoryGirl.create :character, user: user }
    let(:character) { FactoryGirl.create :character, user: user }
    before do
      controller.stub(:current_user).and_return(user)
    end

    it 'assigns the character' do
      get :show, id: character.id
      expect(assigns :character).to eq character
    end

    it "saves the character as the current user's current character" do
      get :show, id: character.id
      expect(user.current_character).to eq character
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
      let(:character_attrs) { FactoryGirl.build(:character, user: user).attributes }

      it 'creates the character' do
        expect do
          post :create, character: character_attrs
        end.to change { Character.count }.by 1
        expect(subject).to redirect_to character_path(Character.last)
      end

      it 'sets the character_class to Wizard' do
        post :create, character: character_attrs.except('character_class_id')
        character = Character.last
        expect(character.character_class.name).to eq 'Wizard'
      end
    end

    describe 'with invalid params' do
      let(:character_attrs) { FactoryGirl.build(:character, user: user).attributes.except('name') }

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
