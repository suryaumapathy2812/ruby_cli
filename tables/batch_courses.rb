class BatchCourses

  def initialize
    @batch_course_list = []
  end

  def insert_one(batch_id, course_id)
    _batch_course = BatchCourseModel.new(batch_id, course_id)
    _batch_course.id = @batch_course_list.length.to_i + 1
    @batch_course_list.push(_batch_course)
  end

end
