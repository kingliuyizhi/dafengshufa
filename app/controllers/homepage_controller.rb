#encoding: utf-8
class HomepageController < ApplicationController
  skip_before_filter :require_login

  def index
    @title = "首页"
  end

  def course
    @title = "课程介绍"
  end

  def teacherwork
    @title = "教师作品"
  end

  def studentwork
    @title = "学生作品"
  end

  def goodstudent
    @title = "优秀学员"
  end

  def about
    @title = "关于我们"
  end

end
