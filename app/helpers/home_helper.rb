module HomeHelper
  def time_range lesson
    "#{lesson.begin_time.strftime("%H:%M") } - #{lesson.end_time.strftime("%H:%M") }" 
  end
  def lesson_planed? lesson, current_user
    lesson.planed_users.include? current_user
  end
end
