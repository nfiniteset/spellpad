class window.SPCollection extends Backbone.Collection

  initialize: (models, options) ->
    { @app, @namespace, @parser } = options
    super

  parse: (response) ->
    @parser.parse(response, @)
