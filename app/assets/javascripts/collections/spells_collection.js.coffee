#= require collections/collection
#= require models/spell

class window.SPSpellsCollection extends SPCollection

  model: SPSpell
  url: '/api/spells/'
