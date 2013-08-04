class SpellsController < ApplicationController

  def index
    if current_user.current_character.nil?
      redirect_to new_character_path
    end
  end

  def show
    @spell = Spell.find(params[:id])
    @properties = @spell.properties
  end
end
