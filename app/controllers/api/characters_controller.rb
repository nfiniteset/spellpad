class Api::CharactersController < Api::BaseController
  respond_to :json

  def show
    @character = Character.find(params[:id])
    respond_with @character
  end
end