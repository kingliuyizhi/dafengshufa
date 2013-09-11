class Api::ApiController < ApplicationController
  skip_before_filter :require_login

  # POST /api/api/get_announcements
  def get_announcements
    if params[:cnt].nil?
      # @announcements = Announcement.order("created_at DESC")
      @announcements = Announcement.desc(:created_at)
    else
      # @announcements = Announcement.limit(params[:cnt]).order("created_at DESC")
      @announcements = Announcement.desc(:created_at).limit(params[:cnt])
    end

    respond_to do |format|
      format.json { render :json => @announcements }
    end
  end

end
