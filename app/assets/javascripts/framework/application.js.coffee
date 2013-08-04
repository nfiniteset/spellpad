class window.SPApplication extends Marionette.Application

  addCollections: (collections) ->
    @namespaces = []
    for namespace, Collection of collections
      @namespaces.push namespace
      @[namespace] = new Collection([], namespace: namespace, app: @)