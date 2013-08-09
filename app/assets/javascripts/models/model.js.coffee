class window.SPModel extends Backbone.RelationalModel

  initialize: (attributes, options) ->
    super

  currentUser: ->
    Spellpad.currentUser
