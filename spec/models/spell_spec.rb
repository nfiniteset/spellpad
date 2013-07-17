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

describe Spell do
  let(:spell_attrs) do
    {
      school: 'Arcane',
      cleric_focus: 'None',
      created_at: Date.yesterday,
      updated_at: Date.today
    }
  end
  let(:spell) { FactoryGirl.build :spell, spell_attrs }

  describe '#properties' do
    it 'returns properties to display' do
      expect(spell.properties).to include 'school'
    end

    it 'excludes properties set to "None"' do
      expect(spell.properties).to_not include 'cleric_focus'
    end

    it 'excludes boilerplate properties' do
      expect(spell.properties).to_not include 'id'
      expect(spell.properties).to_not include 'created_at'
      expect(spell.properties).to_not include 'updated_at'
    end
    
  end
end
