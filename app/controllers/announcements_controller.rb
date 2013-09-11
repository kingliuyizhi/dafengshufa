#encoding: utf-8
class AnnouncementsController < ApplicationController
  skip_before_filter :require_login

  # GET /announcements
  def index
    @title = "公司动态"
  end

  def show
    @title = "文章详情"
    @announcement = Announcement.find(params[:id])
  end

end
