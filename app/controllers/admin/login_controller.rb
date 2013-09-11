#encoding: utf-8
require 'digest/md5'

class Admin::LoginController < ApplicationController
  skip_before_filter :require_login

  def index
    @title = "登陆"
    render layout: "admin"
  end

  # POST Authentification
  def login
    username = params[:username]
    password = params[:password]
    password = Digest::MD5.hexdigest(password)

    @admin = Admin.where(:username => username).first

    if !@admin.nil? && password == @admin.password
      session[:admin] = @admin
      redirect_to controller: "admin/dashboard", action: "index"
    else
      flash[:notice] = "用户名或密码输入错误！"
      redirect_to action: "index"
    end
  end

end
