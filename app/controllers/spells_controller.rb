class SpellsController < ApplicationController

  def index
    @spell_levels = spell_class.spell_levels.by_level
  end

  def show
    @spell = Spell.find(params[:id])
    @properties = @spell.properties
  end

  private

  def spell_class
    if params[:character_class_id]
      CharacterClass.find(params[:character_class_id])
    elsif params[:character_id]
      character = Character.find(params[:character_id])
      character.character_class
    end
  end
end
