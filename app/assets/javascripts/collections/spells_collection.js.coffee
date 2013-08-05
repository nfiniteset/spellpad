class window.SPSpellsCollection extends SPCollection

  url: ->
    "/api/character_classes/4/spells/"

  model: SPSpell

  parse: (response) ->
    spells_attrs = response[@namespace]
    for spell_attrs in spells_attrs
      spell_attrs.known = _(Spellpad.current_character.get('known_spell_ids')).include spell_attrs.id
    spells_attrs
