class window.SPCharacter extends FrameworkModel

  url: -> "/api/characters/#{@id}"

  parse: (response) ->
    response.character