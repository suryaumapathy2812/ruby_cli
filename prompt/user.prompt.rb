require_relative "./../pre_index.rb"


def user_prompt

  puts "Choose your option"
  puts "1. List Users"
  puts "2. Create User"
  puts "8. Go Back"
  puts "9. Quit"
  _input = gets.chomp().to_i

  case _input

    when 1
      puts "#{$user_table.to_string}"
      user_prompt

    when 2
      puts "Enter User details"
      puts "User name :"
      _user_name = gets.chomp()
      $user_table.insert_one(_user_name)
      puts "User created Successfully"
      puts "#{$user_table.to_string}"
      user_prompt

    when 8
      start_prompt

    when 9
      puts "Quitting User table"
      return nil


    else
      puts "Invalid Input"
      return nil

  end

end
