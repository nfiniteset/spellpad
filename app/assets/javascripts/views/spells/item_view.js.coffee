class window.SPSpellsItemView extends Marionette.ItemView

  template: 'spells/item'
  tagName: 'tr'

  events:
    'click .toggle-known': 'toggleKnown'

  toggleKnown: (event) ->
    event.preventDefault()
    known = _(@options.character.get('known_spell_ids')).include @model.get 'id'
    console.log known
