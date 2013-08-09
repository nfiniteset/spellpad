class window.SPUser extends SPModel

  url: '/api/user_sessions/'

  relations: [
    {
      type: Backbone.HasMany
      key: 'characters'
      relatedModel: 'SPCharacter'
      collectionType: 'SPCharactersCollection'
    }
    {
      type: Backbone.HasOne
      key: 'current_character'
      relatedModel: 'SPCharacter'
      collectionType: 'SPCharactersCollection'
    }
  ]

  parse: (response) ->
    user = response.user_session.current_user
    user.characters = response.characters
    user.current_character = _(user.characters).find (c) -> c.id == user.current_character.id
    user
