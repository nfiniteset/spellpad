class Api::KnownSpellsController < Api::BaseController
  respond_to :json

  def create
    character = params[:character_id]
    spell = params[:spell_id]

    character.known_spells << spell
    character.save!
  end

end