module Api
  class UserSession
    include ActiveModel::Serialization
    include ActiveModel::SerializerSupport
    attr_reader :current_user

    def initialize(current_user)
      @current_user = current_user
    end

    def active_model_serializer
      UserSessionSerializer
    end
  end
end