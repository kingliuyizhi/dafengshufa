class LocaleController < ApplicationController
    skip_before_filter :require_login

    def set_locale_session
        session[:locale] = params[:locale]

        render :layout => false
    end

end
