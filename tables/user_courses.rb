require_relative "./../model/user_course.model.rb"

class UserCourses

  def initialize ()
    @user_course_list = []
  end


  def insert_one(course_id, user_id)
    _user_course = UserCourseModel.new(course_id, user_id)
    _user_course.id = @user_course_list.length.to_i + 1
    @user_course_list.push(_user_course)
  end

  def list
    return @user_course_list
  end

end
