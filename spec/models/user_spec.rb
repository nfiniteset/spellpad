require 'spec_helper'

describe User do
  describe '#current_character' do
    let(:user) { FactoryGirl.create :user }

    describe 'without a character' do
      it 'returns nil' do
        expect(user.current_character).to be_nil
      end
    end

    describe 'without a current character' do
      let!(:character) { FactoryGirl.create :character, user: user }

      it "returns the user's first character" do
        expect(user.current_character).to eq character
      end
    end

    describe 'with a current character' do
      let(:character) { FactoryGirl.create :character, user: user }
      before do
        user.current_character = character
        user.save!
      end

      it "returns the user's current character" do
        expect(user.current_character).to eq character
      end
    end
  end
end
