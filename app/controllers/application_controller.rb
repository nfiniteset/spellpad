class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def not_authenticated
    redirect_to sign_in_url
  end

  def spell_class
    if params[:character_class_id]
      CharacterClass.find(params[:character_class_id])
    elsif params[:character_id]
      character = Character.find(params[:character_id])
      character.character_class
    end
  end
end
