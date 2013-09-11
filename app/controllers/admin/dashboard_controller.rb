#encoding: utf-8
class Admin::DashboardController < ApplicationController

  def index
    @title = "控制面板"
    render layout: "admin"
  end

end
