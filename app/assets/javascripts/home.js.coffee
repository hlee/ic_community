# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery(document).ready ->
  $("input[type='checkbox']").bind 'click', (args) ->
    u_count = $(this).parent().siblings("td.users_count").attr("data_count")
    p_flag = $(this).parent().attr("data_p_flag")
    if p_flag == 'true'
      number = parseInt(u_count) - 1
    else
      number = parseInt(u_count) + 1
    #number = (p_flag == 'true' ? parseInt(u_count) - 1 : pareseInt(u_count) + 1)
    #alert(u_count + "" + number)
    $(this).parent().siblings("td.users_count").html(number)
    lesson_id = $(this).parent().attr("data_lesson_id")
    $.ajax
      type: 'put',
      url: "plan_lesson",
      data: "lesson_id=" + lesson_id,
      success: (data) ->
        $(this).parent().siblings("td.users_count").attr("data_count", data)
        alert(data)
    
