class CharacterSpellSerializer < ActiveModel::Serializer
  embed :ids

  has_one :character
  has_one :spell
end