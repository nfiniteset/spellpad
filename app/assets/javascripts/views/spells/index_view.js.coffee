class window.SPSpellsIndexView extends Marionette.Layout

  template: 'spells/index'

  regions:
    collectionRegion: '#spells-collection'

  initialize: (options) ->
    @collectionView = new SPSpellsCollectionView(collection: options.spellsCollection)

  render: ->
    super
    @collectionRegion.show(@collectionView)
    @