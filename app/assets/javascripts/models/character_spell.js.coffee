#= require models/model
#= require models/spell
#= require collections/spells_collection

window.SPCharacterSpell = SPModel.extend

  relations: [
    {
      type: Backbone.HasOne
      key: 'spell'
      keySource: 'spell_id'
      relatedModel: SPSpell
      relatedCollection: 'spellsCollection'
      reverseRelation:
        key: 'character_spell'
        type: Backbone.HasOne
    }
  ]

  urlRoot: '/api/character_spells'

  parse: (response) ->
    response.character_spell

SPCharacterSpell.setup()
