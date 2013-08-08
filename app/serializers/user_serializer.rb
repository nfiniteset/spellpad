class UserSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :email

  has_one :current_character, polymorphic: true
  has_many :characters
end