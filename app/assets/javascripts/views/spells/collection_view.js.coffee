#= require views/spells/item_view

class window.SPSpellsCollectionView extends Marionette.CompositeView

  itemView: SPSpellsItemView
  itemViewContainer: '#spells-items'
  template: 'spells/collection'
  