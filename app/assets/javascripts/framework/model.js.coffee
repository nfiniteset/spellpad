class window.FrameworkModel extends Backbone.Model

  initialize: ->
    super

  hasMany: (singular, plural) ->
    @[plural] = =>
      _(@get("#{singular}_ids")).map (id) =>
        Spellpad[plural].find (m) -> m.get(id) == id
