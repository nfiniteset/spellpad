class CharacterClassSerializer < ActiveModel::Serializer
  embed :ids

  attributes :name, :id
  has_many :spell_levels, :spells
end