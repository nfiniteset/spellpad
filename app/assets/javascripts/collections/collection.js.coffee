class window.SPCollection extends Backbone.Collection

  initialize: (models, options) ->
    { @app, @namespace } = options
    super

  parse: (response) ->
    for namespace, data of response
      @app[namespace+'Collection'].add(data) unless namespace == @namespace
    response[@namespace]