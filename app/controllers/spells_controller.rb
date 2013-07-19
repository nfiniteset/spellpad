class SpellsController < ApplicationController

  def index
    @spell_class = spell_class
    @known_spell_ids = current_character.known_spells.map(&:id)
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
