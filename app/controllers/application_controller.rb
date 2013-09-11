class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login, :set_locale

  private
  def require_login
    if session[:admin].nil?
      redirect_to controller: "admin/login"
    end
  end

  private
  def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
  end

end
