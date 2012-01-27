class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:schedule_lesson]
  def index
    @users = User.all
  end
  
  def schedule_lesson
    @lessons = Lesson.all
  end
  
  def plan_lesson
    lesson = Lesson.find_by_id params[:lesson_id]
    if lesson.planed_users.include? current_user
      lesson.planed_users.delete current_user
    else
      lesson.planed_users << current_user
    end
    render :text => lesson.planed_users.count
  end
end
