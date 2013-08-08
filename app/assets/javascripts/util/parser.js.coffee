class window.SPParser

  constructor: (@app) ->

  parse: (response, container) ->
    for namespace, data of response
      @app[namespace+'Collection'].add(data) unless namespace == container.namespace
    response[container.namespace]
    