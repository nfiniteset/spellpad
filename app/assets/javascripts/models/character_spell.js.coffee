class window.SPCharacterSpell extends FrameworkModel

  url: -> "/api/characters/#{ @get 'character_id' }/known_spells/"
