#= require ./collection_view

class window.SPSpellsIndexView extends Marionette.Layout

  template: 'spells/index'

  regions:
    collectionRegion: '#spells-collection'
