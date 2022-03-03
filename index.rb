# frozen_string_literal: true

# require_relative "./pre_index.rb"
require_relative './prompt/user.prompt'
require_relative './prompt/batch.prompt'

def start_prompt
  puts 'Choose the table your want to access'
  puts '1. User'
  puts '2. Batch'
  puts '3. Course'
  puts '4. User Courses'
  puts '5. Batch Courses'
  puts 'Enter Your choice'

  _table = gets.chomp.to_i

  case _table
  when 1
    puts ''
    user_prompt

  when 2
    puts ''
    batch_prompt

  else
    puts 'Invalid Input'
    nil

  end
end

on_load
start_prompt
# batch_prompt()
