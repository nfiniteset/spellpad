class window.SPModel extends Backbone.Model

  initialize: (attributes, options) ->
    super

  currentUser: ->
    Spellpad.currentUser