require_relative "./pre_index.rb"

def create_batch_user
  _batch_ids =  $batch_table.list.map { |batch| batch.id }
  puts "Enter Batch ID #{_batch_ids}:"
  _input_batch_id = gets.chomp()

  _user_ids = $user_table.list.map { |course| course.id }
  puts "Enter User ID #{_user_ids}:"
  _input_user_id = gets.chomp()

  puts "Enter User Role [Trainer, Student]:"
  _input_role = gets.chomp()

  puts "Your Batch ID:#{ _input_batch_id }, User ID:#{_input_user_id}, User Role:#{_input_role}"

end



def create_batch_course
  _batch_ids =  $batch_table.list.map { |batch| batch.id }
  puts "Enter Batch ID #{_batch_ids}:"
  _input_batch_id = gets.chomp()

  _course_ids = $course_table.list.map { |course| course.id }
  puts "Enter Course ID #{_course_ids}:"
  _input_course_id = gets.chomp()

  puts "Your Batch ID:#{ _input_batch_id }, Course ID:#{_input_course_id}"

end

on_load()
create_batch_user()
