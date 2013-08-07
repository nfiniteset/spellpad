#= require_tree ./marionette_overrides

class window.SPSpellpad extends Marionette.Application

  addCollections: (collections) ->
    for namespace, Collection of collections
      collection = new Collection(namespace: namespace)
      @[namespace+'Collection'] = collection    

  addControllers: (controllers) ->
    for namespace, Controller of controllers
      controller = new Controller(app: @, namespace: namespace)
      @[namespace+'Controller'] = controller

  addRouters: (routers) ->
    for namespace, Router of routers
      @[namespace+'Router'] = new Router(controller: @[namespace+'Controller'])
