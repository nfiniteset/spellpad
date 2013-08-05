#= require views/spells/index_view
#= require views/spells/show_view

class window.SPApplicationController

  constructor: (options) ->
    { @character } = options

  spellsIndex: ->
    spellsLayout = new SPSpellsIndexView(model: @character, spells: Spellpad.spells)
    Spellpad.contentRegion.show spellsLayout

    spellsCollectionView = new SPSpellsCollectionView
      character: @character
      collection: Spellpad.spells

    spellsLayout.collectionRegion.show spellsCollectionView

  knownSpellsIndex: ->
    console.log 'knownSpellsIndex'

  spellsShow: (spellId) ->
    spell = Spellpad.spells.get(spellId)
    view = new SPSpellsShowView
      model: spell
    Spellpad.contentRegion.show view