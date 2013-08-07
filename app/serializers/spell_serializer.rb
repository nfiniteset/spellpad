class SpellSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :descriptor, :name, :school, :short_description, :properties
  has_many :spell_levels

  def properties
    object.properties.map do |p|
      { label: p.to_s.titleize, value: object.send(p) }
    end
  end
end