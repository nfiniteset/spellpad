class CharactersController < ApplicationController
  def index
    if current_user.current_character.nil?
      redirect_to new_character_path
    else
      redirect_to character_path(current_user.current_character)
    end
  end

  def new
    @character = Character.new
  end

  def show
    @character = Character.find params.require(:id)
    current_user.current_character = @character
    current_user.save!
  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user
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
