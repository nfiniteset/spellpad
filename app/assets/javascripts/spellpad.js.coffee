#= require_tree ./marionette_overrides
#= require util/parser
#= require routers/spells_router
#= require views/header_view

class window.SPSpellpad extends Marionette.Application

  addCollections: (collections) ->
    parser = new SPParser(@)
    for namespace, Collection of collections
      collection = new Collection([], app: @, namespace: namespace, parser: parser)
      @[namespace+'Collection'] = collection

  addControllers: (controllers) ->
    for namespace, Controller of controllers
      controller = new Controller(app: @, namespace: namespace)
      @[namespace+'Controller'] = controller

  addRouters: (routers) ->
    for namespace, Router of routers
      @[namespace+'Router'] = new Router(controller: @[namespace+'Controller'])




window.Spellpad = new SPSpellpad();

Spellpad.addCollections
  spells: SPSpellsCollection
  spell_levels: SPSpellLevelsCollection
  character_classes: SPCharacterClassesCollection
  cleric_domains: SPClericDomainsCollection

Spellpad.addRegions
  headerRegion: '#header'
  mainRegion: '#main'
  footerRegion: '#footer'

Spellpad.addControllers
  spells: SPSpellsController

Spellpad.addRouters
  spells: SPSpellsRouter

Spellpad.addInitializer (options) ->
  Spellpad.currentUser = new SPUser().fetch
    success: (user) ->
      headerView = new SPHeaderView model: user
      Spellpad.headerRegion.show(headerView)
  Backbone.history.start()
