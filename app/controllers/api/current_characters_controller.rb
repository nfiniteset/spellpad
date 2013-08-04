class Api::CurrentCharactersController < Api::BaseController
  respond_to :json

  def show
    @character = current_user.current_character
    respond_with @character
  end
end