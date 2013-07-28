class Spellpad extends FrameworkApplication

  collections:
    spells: SPSpellsCollection
    spell_levels: SPSpellLevelsCollection
    character_classes: SPCharacterClassesCollection
    cleric_domains: SPClericDomainsCollection

  initialize: ->
    super
    @spells.on 'sync', () =>

      wizardClass = @character_classes.find (c) -> c.get('name') == 'Wizard'
      levels = @spell_levels.get wizardClass.get('spell_level_ids')
      groupedLevels = _(levels).groupBy (l) -> l.get('level')
      groupedLevels = _(groupedLevels).reduce((memo, levels, levelNumber) =>
        memo[levelNumber] = _(levels).map (l) =>
          @spells.get l.get('spell_id')
        memo
      , {})

    @spells.fetch()

window.Spellpad = new Spellpad