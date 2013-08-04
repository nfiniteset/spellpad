class window.SPCharacterClass extends FrameworkModel

  url: -> "/api/character_classes/#{@id}"

  initialize: ->
    @hasMany 'spell_level'

  parse: (response) ->
    response.character_classes

