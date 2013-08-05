#= require ./item_view

class window.SPSpellsCollectionView extends Marionette.CollectionView

  itemView: SPSpellsItemView

  itemViewOptions: (model, index) ->
    character: @options.character

  tagName: 'ul'

  template: 'spells/index'

