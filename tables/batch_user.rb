# frozen_string_literal: true

require_relative './../model/batch_user.model'

class BatchUsers
  def initialize
    @batch_user_list = []
  end

  def insert_one(batch_id, user_id)
    _batch_user = BatchUserModel.new(batch_id, user_id)
    _batch_user.id = @batch_user_list.length.to_i + 1
    @batch_user_list.push(_batch_user)
  end

  def list
    @batch_user_list
  end

  def find_one(batch)
    # puts batch.keys
    if batch.key?('id')
      find_one_by_id(batch['id'])
    elsif batch.key?('batch_id')
      find_one_by_batch_id(batch['batch_id'])
    elsif batch.key?('user_id')
      find_one_by_user_id(batch['user_id'])
    end
  end

  def find_all(batch)
    # puts batch.keys
    if batch.key?('id')
      find_all_by_id(batch['id'])
    elsif batch.key?('batch_id')
      find_all_by_batch_id(batch['batch_id'])
    elsif batch.key?('user_id')
      find_all_by_user_id(batch['user_id'])
    end
  end

  def to_string
    puts ''
    @batch_user_list.each do |batch_course|
      puts "| :id => #{batch_course.id} , :name => #{user.name} |"
    end
    nil
  end

  private

  def find_one_by_id(id)
    @batch_user_list.find { |batch|  (batch.id.to_i) == id }
  end

  def find_one_by_batch_id(batch_id)
    @batch_user_list.find { |batch|  batch.batch_id == batch_id }
  end

  def find_one_by_user_id(user_id)
    @batch_user_list.find { |batch|  batch.user_id == user_id }
  end

  def find_all_by_id(id)
    @batch_user_list.find_all { |batch|  (batch.id.to_i) == id }
  end

  def find_all_by_batch_id(batch_id)
    @batch_user_list.find_all { |batch|  batch.batch_id == batch_id }
  end

  def find_all_by_user_id(user_id)
    @batch_user_list.find { |batch| batch.user_id == user_id }
  end
end
