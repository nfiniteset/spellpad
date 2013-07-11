class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end


  def create
    @character = Character.new(character_params)
    @character.character_class = CharacterClass.find_by_name('Wizard')
    @character.save!
    redirect_to characters_path
  rescue
    flash[:error] = 'The character could not be created'
    render :new
  end

  private

  def character_params
    params.require(:character).permit(:name, :character_class_id)
  end

end
