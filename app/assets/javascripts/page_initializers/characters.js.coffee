#= require spellpad
window.SPPageInitializers = {} unless SPPageInitializers?

SPPageInitializers.characters =
  show: ->
    Spellpad.on 'start', (options) ->
      Spellpad.spellsRouter.navigate 'spells', { trigger: true, replace: true }

    $ ->
      Spellpad.start()
