class ClericDomainSerializer < ActiveModel::Serializer
  embed :ids

  attributes :name, :id
  has_many :spells
end