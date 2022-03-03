require_relative "./../pre_index.rb"

def batch_prompt

  puts "Choose your option"
  puts "1. List Batches"
  puts "2. Create Batch"
  puts "3. List Batch Users"
  puts "4. Add User to Batch"
  puts "9. Quit"
  _input = gets.chomp.to_i

  case _input

    when 1
      puts $batch_table.to_string
      batch_prompt

    when 2
      puts "Enter Batch details"
      puts "Batch Name :"
      batch_name = gets.chomp()
      $user_table.insert_one(batch_name)
      puts "Batch created Successfully"
      puts "#{$user_table.to_string}"
      batch_prompt

    when 3
      puts "\n Choose a Batch to list users"
      _batch_list = $batch_table.list


      # List batch to the User
      _batch_list.each_with_index do |batch, index|
        puts "#{index.to_i + 1}. #{batch.name}"
      end

      # Get Batch ID
      _batch_id = gets.chomp().to_i

      # TODO: Check If user Entered batch id is valid or not
      # _batch = $batch_table.find_one( { "id" => _batch_id } )
      # puts _batch
      # if (_batch.nil? || _batch == 0)
      #   puts "Batch Id invalid"
      #   batch_prompt
      # end

      # List batch Users
      _batch_users = $batch_user_table.find_all( {"batch_id" => _batch_id} )
      puts _batch_users
      _batch_users.each do |batch_user|
        puts "| :id => #{batch_user.id}, :batch_id => #{batch_user.batch_id}, :user_id => #{batch_user.user_id} |"
      end







    when 4
      puts "Choose a batch to which you want to add user"
      $batch_table.list.each_with_index  do |batch, index|
        puts "#{index.to_i + 1}. #{batch.name}"
      end
      puts "\n Select the user you want to add to the #{_batch.name}"
      $user_table.list.each do |user|
        puts "| id => #{user.id}, name => #{user.name} |"
      end

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
