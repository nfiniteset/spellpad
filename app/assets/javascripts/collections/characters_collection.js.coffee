#= require collections/collection
#= require models/character

class window.SPCharactersCollection extends SPCollection

  model: SPCharacter
  url: '/api/characters/'
