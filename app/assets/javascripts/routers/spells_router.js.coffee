class window.SPSpellsRouter extends Marionette.AppRouter

  appRoutes:
    'spells': 'index'
    'spells/': 'index'
    'spells/:id': 'show'
