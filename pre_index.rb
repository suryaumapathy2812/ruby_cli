# Import Data-table Model
require_relative "./tables/users.rb"
require_relative "./tables/courses.rb"
require_relative "./tables/batches.rb"
require_relative "./tables/batch_users.rb"
require_relative "./tables/batch_courses.rb"



$user_table = Users.new()
$course_table = Courses.new()
$batch_table = Batches.new()

$batch_user_table = BatchUsers.new()
$batch_course_table = BatchCourses.new()



def on_load
  create_users
  create_courses
  create_batches

  # $user_table.list.each { |user| puts user.name }
  # $course_table.list.each { |user| puts user.name }
  # $batch_table.list.each { |user| puts user.name }
end


def create_users
  $user_table.insert_one("Shyam")
  $user_table.insert_one("Dhaya")
  $user_table.insert_one("Surya")
end

def create_courses
  $course_table.insert_one( "HTML" )
  $course_table.insert_one( "CSS" )
  $course_table.insert_one( "JavaScript" )
end

def create_batches
  $batch_table.insert_one( "Batch_1" )
  $batch_table.insert_one( "Batch_2" )
end
