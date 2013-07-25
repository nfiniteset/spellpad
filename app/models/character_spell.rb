# == Schema Information
#
# Table name: character_spells
#
#  id           :integer          not null, primary key
#  character_id :integer
#  spell_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class CharacterSpell < ActiveRecord::Base
  belongs_to :character
  belongs_to :spell
end
