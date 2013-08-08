class CharacterSerializer < ActiveModel::Serializer
  embed :ids

  attributes :name, :id
  has_one :character_class
  has_many :known_spells, :spells
end