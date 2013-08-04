#= require ./item_view

class window.SPSpellsCollectionView extends Marionette.CollectionView

  itemView: SPSpellsItemView
  tagName: 'ul'
  template: 'spells/index'
