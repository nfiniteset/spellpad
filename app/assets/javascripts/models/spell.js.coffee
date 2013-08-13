#= require models/model

window.SPSpell = SPModel.extend

  parse: (response) ->
    character_spells = @currentUser().get('current_character').get('character_spells')
    response.known = !!character_spells.find (cs) -> cs.get('spell_id') == response.id
    response
