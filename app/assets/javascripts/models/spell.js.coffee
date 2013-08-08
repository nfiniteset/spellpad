#= require models/model

class window.SPSpell extends SPModel

  parse: (response) ->
    known_spell_ids = @currentUser().get('current_character').get('known_spell_ids')
    response.known = _(known_spell_ids).include response.id
    response