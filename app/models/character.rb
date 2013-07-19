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

class Character < ActiveRecord::Base
  belongs_to :character_class
  has_many :character_spells
  has_many :known_spells, through: :character_spells, source: :spell

  validates_presence_of :name
  validates_presence_of :character_class_id
end
