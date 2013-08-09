class CharacterSpellSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id
  has_one :character
  has_one :spell
end