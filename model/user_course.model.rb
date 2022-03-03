class UserCourseModel

  attr_accessor :id, :course_id , :user_id

  def initialize (course_id, user_id)
    @course_id = course_id
    @user_id = user_id
  end

end
