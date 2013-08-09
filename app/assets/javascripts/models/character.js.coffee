#= require models/known_spell

class window.SPCharacter extends SPModel

  relations: [
    {
      type: Backbone.HasMany
      key: 'known_spells'
      relatedModel: 'SPKnownSpell'
    }
  ]

  createKnownSpell: (spell) ->
    known_spell_attrs = { character_id: @get('id'), spell_id: spell.get('id') }
    known_spell = new SPKnownSpell(known_spell_attrs)
    known_spell.save {}, {
      success: (known_spell) =>
        @get('known_spells').set(known_spell)
        spell.set('known', true)
      error: ->
        throw "Couldn't create known spell"
    }