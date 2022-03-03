require_relative "./../pre_index.rb"

def batch_prompt

  puts "Choose your option"
  puts "1. List Batches"
  puts "2. Create Batch"
  puts "9. Quit"
  _input = gets.chomp().to_i

  case _input

    when 1
      puts "#{$batch_table.to_string}"
      batch_prompt

    when 2
      puts "Enter Batch details"
      puts "Batch Name :"
      batch_name = gets.chomp()
      $user_table.insert_one(batch_name)
      puts "Batch created Successfully"
      puts "#{$user_table.to_string}"
      batch_prompt

    when 8
      start_prompt

    when 9
      puts "Quitting Batch table"
      return nil

    else
      puts "Invalid Input"
      return nil


  end

end
