class BatchCourseModel

  attr_accessor :id, :course_id , :batch_id

  def initialize (course_id, batch_id)
    @course_id = course_id
    @batch_id = batch_id
  end

end
