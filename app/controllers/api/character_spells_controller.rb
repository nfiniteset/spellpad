module Api
  class CharacterSpellsController < ApiController

    def create
      @character_spell = CharacterSpell.new character_spell_params
      @character_spell.save!
      #MYSTERY Why do I need this location argument?
      respond_with @character_spell, location: ''
    rescue
      head :bad_request
    end

    private

    def character_spell_params
      params.require(:character_spell).permit(:character_id, :spell_id)
    end

  end
end