#= require controllers/controller
#= require views/spells/index_view

class window.SPSpellsController extends SPController
  
  index: ->
    @app.spellsCollection.fetch()
    view = new SPSpellsIndexView spellsCollection: @app.spellsCollection
    this.app.mainRegion.show(view)
