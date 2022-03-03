# frozen_string_literal: true

require_relative './../pre_index'

def batch_prompt
  puts 'Choose your option'
  puts '1. List Batches'
  puts '2. Create Batch'
  puts '3. List Batch Users'
  puts '4. Add User to Batch'
  puts '9. Quit'
  _input = gets.chomp.to_i

  case _input

  when 1
    puts $batch_table.to_string
    batch_prompt

  when 2
    puts 'Enter Batch details'
    puts 'Batch Name :'
    batch_name = gets.chomp
    $batch_table.insert_one(batch_name)
    puts 'Batch created Successfully'
    puts $batch_table.to_string.to_s
    batch_prompt

  when 3
    puts "\n Choose a Batch to list users"
    _batch_list = $batch_table.list

    # List batches
    list_batch_user_as_option

    # Get Batch ID
    _batch_id = gets.chomp.to_i

    # Validate Batch ID
    _batch = $batch_table.find_one({ 'id' => _batch_id })
    puts _batch
    if _batch.nil?
      puts 'Batch Id invalid'
      batch_prompt
    end

    # List batch Users
    _batch_users = $batch_user_table.find_all({ 'batch_id' => _batch_id })
    puts _batch_users
    _batch_users.each do |batch_user|
      puts "| :id => #{batch_user.id}, :batch_id => #{batch_user.batch_id}, :user_id => #{batch_user.user_id} |"
    end
    batch_prompt

  when 4
    # List Batches
    puts 'Choose a batch to which you want to add user'
    list_batch_user_as_option

    # Get Batch ID
    _batch_id = gets.chomp.to_i

    # Validate Batch ID
    _batch = $batch_table.find_one({ 'id' => _batch_id })
    puts _batch
    if _batch.nil?
      puts 'Batch ID is Invalid'
      batch_prompt
    end

    # List User
    $user_table.list.each do |user|
      puts "#{user.id}. #{user.name}"
    end

    # Get User Id
    _user_id = gets.chomp.to_i

    # Validate User ID
    _user = $user_table.find_one( { 'id' => _user_id } )
    puts _user
    if _user.nil?
      puts 'User ID is invalid'
      batch_prompt
    end

    # Add User to Batch_user
    $batch_user_table.insert_one(_batch_id, _user_id)
    list_batch_user_as_option
    batch_prompt

  when 8
    start_prompt

  when 9
    puts 'Quitting Batch table'
    nil

  else
    puts 'Invalid Input'
    nil

  end
end

def list_batch_user_as_option
  $batch_table.list.each_with_index do |batch, index|
    puts "#{index.to_i + 1}. #{batch.name}"
  end
end
