module Api
  class CharacterSpellsController < ApiController

    def create
      @character_spell = CharacterSpell.new character_spell_params
      @character_spell.save!
      respond_with @character_spell, location: nil
    rescue
      head :bad_request
    end

    def destroy
      @character_spell = CharacterSpell.find params[:id]
      @character_spell.destroy
      respond_with @character_spell, location: nil
    rescue
      head :bad_request
    end

    private

    def character_spell_params
      params.require(:character_spell).permit(:character_id, :spell_id)
    end

  end
end