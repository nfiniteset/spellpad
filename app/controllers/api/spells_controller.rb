module Api
  class SpellsController < ApplicationController
    respond_to :json

    def index
      respond_with Spell.limit(10)
    end
  end
end