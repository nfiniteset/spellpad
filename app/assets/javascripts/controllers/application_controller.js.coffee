#= require views/spells/index_view

class window.SPApplicationController

  constructor: (options) ->
    { @character } = options

  spellsIndex: ->
    spellsLayout = new SPSpellsIndexView(model: @character, spells: Spellpad.spells)
    Spellpad.contentRegion.show spellsLayout

    spellsCollectionView = new SPSpellsCollectionView
      character: @model
      collection: Spellpad.spells

    spellsLayout.collectionRegion.show spellsCollectionView

  knownSpellsIndex: ->
    console.log 'knownSpellsIndex'

  spellsShow: (spellId) ->
    console.log 'spellsShow: ' + spellId