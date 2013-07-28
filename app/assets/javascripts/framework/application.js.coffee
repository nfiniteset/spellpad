class window.FrameworkApplication extends Backbone.Router

  initialize: () ->
    @initCollections(@collections)

  initCollections: (collections) ->
    @namespaces = []
    for namespace, Collection of collections
      @namespaces.push namespace
      @[namespace] = new Collection([], namespace: namespace, app: @)