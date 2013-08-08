class UserSessionSerializer < ActiveModel::Serializer
  embed :object

  has_one :current_user
end