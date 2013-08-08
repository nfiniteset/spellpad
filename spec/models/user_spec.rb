# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  email                        :string(255)      not null
#  crypted_password             :string(255)
#  salt                         :string(255)
#  created_at                   :datetime
#  updated_at                   :datetime
#  remember_me_token            :string(255)
#  remember_me_token_expires_at :datetime
#  current_character_id         :integer
#

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
      let!(:previous_character) { FactoryGirl.create :character, user: user }
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
