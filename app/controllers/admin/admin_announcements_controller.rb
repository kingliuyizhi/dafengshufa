#encoding: utf-8
class Admin::AdminAnnouncementsController < ApplicationController

  # GET /admin/admin_announcements
  def index
    @title = "所有文章"
    @announcements = Announcement.desc(:created_at).page(params[:page]).per(10)
    render layout: "admin"
  end

  # GET /admin/admin_announcements/new
  def new
    @title = "创建新文章"
    @announcement = Announcement.new
    render layout: "admin"
  end

  # POST /admin/admin_announcements
  def create
    @announcement = Announcement.new(params[:announcement])
    @announcement.status = 1

    if @announcement.save
      flash[:notice] = "新文章添加成功！"
      redirect_to action: "index"
    else
      flash[:notice] = "系统错误，文章添加失败！"
      redirect_to action: "index"
    end
  end

  # GET /admin/admin_announcements/1/edit
  # ajax call from "admin/admin_announcements/index.html"
  def edit
    @announcement = Announcement.find(params[:id])
    render layout: false
  end

  # PUT /admin/admin_announcements/1
  def update
    @announcement = Announcement.find(params[:id])

    if @announcement.update_attributes(params[:announcement])
      flash[:notice] = "文章修改成功！"
      redirect_to action: "index"
    else
      flash[:notice] = "系统错误，文章修改失败！"
      redirect_to action: "index"
    end
  end

  # DELETE /admin/admin_announcements/1
  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy

    flash[:notice] = "文章删除成功！"
    redirect_to action: "index"
  end

  # POST /admin/admin_announcements/1/delete
  # ajax call from "admin/admin_announcements/index.html"
  def delete
    @announcement = Announcement.find(params[:id])
    render layout: false
  end

end
