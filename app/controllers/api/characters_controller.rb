class Api::CharactersController < Api::BaseController
  respond_to :json

  def show
    @character = Character.find(params[:id])
    current_user.current_character = @character
    current_user.save!
    respond_with @character
  end

  def index
    @characters = current_user.characters
    respond_with @characters
  end

end