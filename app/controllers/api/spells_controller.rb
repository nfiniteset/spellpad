class Api::SpellsController < Api::BaseController
  respond_to :json

  def index
    @spells = spell_class.spells
    respond_with @spells
  end

  def show
    @spell = Spell.find(params[:id])
    respond_with @spell
  end
end