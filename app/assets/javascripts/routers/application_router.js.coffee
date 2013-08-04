class window.SPApplicationRouter extends Marionette.AppRouter

  appRoutes:
    'spells/': 'spellsIndex'
    'known_spells/': 'knownSpellsIndex'
    'spells/:id': 'spellsShow'