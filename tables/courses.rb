require_relative "./../model/course.model.rb"

class
   Courses

  def initialize()
    @course_list = []
  end

  def insert_one( course_name )
    _course = CourseModel.new(course_name)
    _course.id = @course_list.length.to_i + 1
    @course_list.push( _course )
  end

  def list
    return @course_list
  end

end
