class window.SPSpellsRouter extends Marionette.AppRouter

  appRoutes:
    'spells': 'index'
    'spells/:id': 'show'

  routes: ->
    'spells/': => @navigate 'spells', trigger: true, replace: true 