#= require models/known_spell

class window.SPCharacter extends SPModel

  createKnownSpell: (spell) ->
    known_spell_attrs = { character_id: @get('id'), spell_id: spell.get('id') }
    known_spell = new SPKnownSpell(known_spell_attrs)
    known_spell.save {}, {
      success: =>
        known_spell_ids = @get('known_spell_ids')
        known_spell_ids.push spell.get('id')
        @set('known_spell_ids', known_spell_ids)
        spell.set('known', true)
      error: ->
        throw "Couldn't create known spell"
    }