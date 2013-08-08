module Api
  class SpellsController < ApiController

    def index
      respond_with Spell.limit(10)
    end

  end
end