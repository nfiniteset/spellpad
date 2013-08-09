class CharacterSerializer < ActiveModel::Serializer
  embed :ids

  attributes :name, :id
  has_one :character_class
  has_many :character_spells, key: :known_spells, embed: :object
  has_many :spells
end