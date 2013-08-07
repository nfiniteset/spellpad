class window.SPSpellsItemView extends Marionette.ItemView

  tagName: 'tr'
  template: 'spells/item'

  initialize: ->
    console.log 'initalizing spell item view'