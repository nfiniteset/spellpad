require 'spec_helper'

describe Character do
  let(:character) { FactoryGirl.build :character }

  describe 'validating' do
    specify do
      expect(character).to reject_value(nil).for(:name)
    end
  end
end
