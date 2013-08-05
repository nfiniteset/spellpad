window.Spellpad = new SPApplication()

Spellpad.addInitializer (options) ->
  new SPCharacter(id: 1).fetch success: (character) =>
    Spellpad.current_character = character
    Spellpad.spells.fetch success: (results) ->
    @router = new SPApplicationRouter
      controller: new SPApplicationController
        character: character
    @router.navigate 'spells/', trigger: true
    Backbone.history.start()

Spellpad.addRegions
  contentRegion: '#content'

Spellpad.start()

Spellpad.addCollections
  spells: SPSpellsCollection
  spell_levels: SPSpellLevelsCollection
  character_classes: SPCharacterClassesCollection
  cleric_domains: SPClericDomainsCollection

    # @spells.on 'sync', () =>

    #   wizardClass = @character_classes.find (c) -> c.get('name') == 'Wizard'
    #   levels = @spell_levels.get wizardClass.get('spell_level_ids')
    #   groupedLevels = _(levels).groupBy (l) -> l.get('level')
    #   groupedLevels = _(groupedLevels).reduce((memo, levels, levelNumber) =>
    #     memo[levelNumber] = _(levels).map (l) =>
    #       @spells.get l.get('spell_id')
    #     memo
    #   , {})

    # @spells.fetch()