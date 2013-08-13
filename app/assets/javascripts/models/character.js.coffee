#= require models/character_spell

class window.SPCharacter extends SPModel

  relations: [
    {
      type: Backbone.HasMany
      key: 'character_spells'
      relatedModel: 'SPCharacterSpell'
      relatedCollection: 'SPCharacterSpellsCollection'
    }
  ]

  createCharacterSpell: (spell) ->
    character_spell_attrs = { character_id: @get('id'), spell_id: spell.get('id') }
    @get('character_spells').create character_spell_attrs,
      success: (character_spell) ->
        spell.set('known', true)
      error: ->
        throw "Couldn't create character spell."

  destroyCharacterSpell: (spell) ->
    spell.get('character_spell').destroy
      success: ->
        spell.set('known', false)
      error: ->
        throw "Couldn't destroy known spell."

SPCharacter.setup()