#= require controllers/controller
#= require views/spells/index_view

class window.SPSpellsController extends SPController
  
  index: ->
    view = new SPSpellsIndexView spellsCollection: @app.spellsCollection
    this.app.mainRegion.show(view)
