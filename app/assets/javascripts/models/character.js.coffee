#= require models/known_spell

class window.SPCharacter extends SPModel

  relations: [
    {
      type: Backbone.HasMany
      key: 'known_spells'
      relatedModel: 'SPKnownSpell'
      relatedCollection: 'SPKnownSpellsCollection'
    }
  ]

  createKnownSpell: (spell) ->
    known_spell_attrs = { character_id: @get('id'), spell_id: spell.get('id') }
    @get('known_spells').create known_spell_attrs,
      success: (known_spell) ->
        spell.set('known', known_spell)
      error: ->
        throw "Couldn't create known spell."

  destroyKnownSpell: (spell) ->
    spell.get('known').destroy
      error: ->
        throw "Couldn't destroy known spell."

SPCharacter.setup()