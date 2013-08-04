Marionette.Renderer.render = (path, data) ->
  HandlebarsTemplates[path](data)
