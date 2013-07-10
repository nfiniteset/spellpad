class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new character_params

    @character.save!
    redirect_to characters_path
  end

  private

  def character_params
    params.require(:character).permit(:name)
  end

end
