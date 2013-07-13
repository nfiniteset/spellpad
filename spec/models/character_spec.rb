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

describe Character do
  let(:character) { FactoryGirl.build :character }

  describe 'validating' do
    specify do
      expect(character).to reject_value(nil).for(:name)
    end
  end
end
