class SpellsController < ApplicationController

  def index
    @spell_class = spell_class
    @known_spell_ids = current_user.current_character.known_spells.map(&:id)
  end

  def show
    @spell = Spell.find(params[:id])
    @properties = @spell.properties
  end
end
