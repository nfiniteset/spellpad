#= require models/model

window.SPSpell = SPModel.extend

  parse: (response) ->
    known_spells = @currentUser().get('current_character').get('known_spells')
    response.known = known_spells.find (ks) -> ks.get('spell_id') == response.id
    response
