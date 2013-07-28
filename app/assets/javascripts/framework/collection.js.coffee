class window.FrameworkCollection extends Backbone.Collection

  initialize: (models, options) ->
    { @app, @namespace } = options
    super(models, options)

  parse: (response, options) ->
    for namespace in _(@app.namespaces).without(@namespace)
      @app[namespace].add response[namespace]
    response[@namespace]

  get: (ids) ->
    if _(ids).isArray()
      _(ids).map (id) => @get id
    else
      super(ids)