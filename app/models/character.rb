class Character < ActiveRecord::Base
  belongs_to :character_class
  validates_presence_of :name
  validates_presence_of :character_class_id
end
