class SpellLevelSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :level, :id
  has_one :spell_class, polymorphic: true
  has_one :spell
end