# require_relative "./pre_index.rb"
require_relative "./prompt/user.prompt.rb"
require_relative "./prompt/batch.prompt.rb"


on_load()
# create_batch_user()



def start_prompt

  puts "Choose the table your want to access"
  puts "1. User"
  puts "2. Batch"
  puts "3. Course"
  puts "4. User Courses"
  puts "5. Batch Courses"
  puts "Enter Your choice"

  _table =  gets.chomp().to_i

  case _table
    when 1
      puts ""
      user_prompt

    when 2
      puts ""
      batch_prompt

    else
      puts "Invalid Input"
      return nil

  end

end

start_prompt
