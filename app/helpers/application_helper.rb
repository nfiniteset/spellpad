module ApplicationHelper

  def alert_class(alert_type)
    alert_type = {
      alert: 'error',
      notice: 'info'
    }.fetch(alert_type, alert_type.to_s)
    "alert-#{alert_type}"
  end

  def characters
    current_user ? current_user.characters : []
  end

  def current_character
    current_user.current_character
  end
end
