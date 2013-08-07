#= require routers/spells_router
#= require views/header_view

window.Spellpad = new SPSpellpad();

Spellpad.addCollections
  spells: SPSpellsCollection
  spell_levels: SPSpellLevelsCollection
  character_classes: SPCharacterClassesCollection
  cleric_domains: SPClericDomainsCollection

Spellpad.addRegions
  headerRegion: '#header'
  mainRegion: '#main'

Spellpad.addControllers
  spells: SPSpellsController
  # SPKnownSpellsController
  # SPTodaysSpellsController

Spellpad.addRouters
  spells: SPSpellsRouter

Spellpad.addInitializer (options) ->
  headerView = new SPHeaderView

  Spellpad.headerRegion.show(headerView)

Spellpad.addInitializer (options) ->
  Spellpad.spellsRouter.navigate 'spells', { trigger: true }
  Backbone.history.start()

$ ->
  Spellpad.start()
