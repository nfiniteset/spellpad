class CharacterSerializer < ActiveModel::Serializer
  embed :ids

  attributes :name, :id
  has_many :known_spells
end