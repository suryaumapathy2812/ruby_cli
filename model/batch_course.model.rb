class BatchCourseModel

  attr_accessor :id, :batch_id, :course_id

  def initialize (batch_id, course_id)
    @batch_id = batch_id
    @course_id = course_id
  end


end
