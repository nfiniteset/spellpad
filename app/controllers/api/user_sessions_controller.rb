module Api
  class UserSessionsController < ApiController

    def index
      @session = Api::UserSession.new(current_user)
      respond_with @session
    end

  end
end