#= require models/model
#= require models/spell
#= require collections/spells_collection

window.SPKnownSpell = SPModel.extend

  relations: [
    {
      type: Backbone.HasOne
      key: 'spell'
      relatedModel: SPSpell
      relatedCollection: SPSpellsCollection
      reverseRelation:
        key: 'known'
        type: Backbone.HasOne
    }
  ]

  urlRoot: '/api/character_spells'

  parse: (response) ->
    response.character_spell

SPKnownSpell.setup()
