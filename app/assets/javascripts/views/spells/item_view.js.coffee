class window.SPSpellsItemView extends Marionette.ItemView

  tagName: 'tr'
  template: 'spells/item'

  events:
    'click .toggle-known': 'toggleKnown'

  modelEvents:
    'change': 'render'

  toggleKnown: () ->
    unless @model.get('known')
      current_character = @model.currentUser().get('current_character')
      current_character.createKnownSpell(@model)
