class SpellSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :descriptor, :name, :school, :short_description
  has_many :spell_levels
end