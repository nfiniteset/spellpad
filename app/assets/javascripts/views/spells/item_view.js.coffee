class window.SPSpellsItemView extends Marionette.ItemView

  tagName: 'tr'
  template: 'spells/item'

  events:
    'click .toggle-known': 'toggleKnown'

  modelEvents:
    'all': 'render'

  toggleKnown: () ->
    current_character = @model.currentUser().get('current_character')
    if @model.get('known')
      current_character.destroyCharacterSpell(@model)
    else
      current_character.createCharacterSpell(@model)
