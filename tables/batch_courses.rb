require_relative "./../model/batch_course.model.rb"

class BatchCourses

  def initialize ()
    @batch_course_list = []
  end


  def insert_one(course_id, batch_id)
    _batch_course = UserCourseModel.new(course_id, batch_id)
    _batch_course.id = @batch_course_list.length.to_i + 1
    @batch_course_list.push(_batch_course)
  end


  def list
    return @batch_course_list
  end

  def to_string
    puts ""
    @batch_course_list.each do |batch_course|
      puts "| :id => #{batch_course.id} , :name => #{user.name} |"
    end
    return
  end

end
