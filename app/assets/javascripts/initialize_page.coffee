#= require_tree ./page_initializers

$ ->
  controller_name = $('body').data('controller')
  action_name = $('body').data('action') if controller_name?

  controller = SPPageInitializers[controller_name] if action_name?
  action = controller[action_name] if controller?

  action() if action?