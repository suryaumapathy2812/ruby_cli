# frozen_string_literal: true

require_relative './../model/batch.model'

class Batches
  def initialize
    @batch_list = []
  end

  def insert_one(batch_name)
    _batch = BatchModel.new(batch_name)
    _batch.id = @batch_list.length.to_i + 1
    @batch_list.push(_batch)
  end

  def list
    @batch_list
  end

  def find_one(batch)
    puts batch.keys
    if batch.key?('id')
      find_one_by_id(batch['id'])

    elsif batch.key?('name')
      find_one_by_name(batch['name'])

    end
  end

  def to_string
    puts ''
    @batch_list.each do |batch|
      puts "| :id => #{batch.id} , :name => #{batch.name} |"
    end
    nil
  end

  private

  def find_one_by_id(id)
    @batch_list.find { |batch| (batch.id.to_i) == id }
  end

  def find_one_by_name(name)
    @batch_list.find { |batch| batch.name == name }
  end
end
