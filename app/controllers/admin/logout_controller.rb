class Admin::LogoutController < ApplicationController

  def index
    session[:admin] = nil
    redirect_to controller: "admin/login", action: "index"
  end

end
