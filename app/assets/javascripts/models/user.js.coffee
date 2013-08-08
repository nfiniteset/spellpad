class window.SPUser extends SPModel

  url: '/api/user_sessions/'

  parse: (response) ->
    user = response.user_session.current_user
    user.characters = response.characters
    user.current_character = new SPCharacter _(user.characters).find (c) -> c.id == user.current_character.id
    user
