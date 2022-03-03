require_relative "./../model/batch.model.rb"

class Batches

  def initialize()
    @batch_list = Array.new
  end

  def insert_one( batch_name )
    _batch = BatchModel.new( batch_name )
    _batch.id = @batch_list.length().to_i + 1
    @batch_list.push( _batch )
  end

  def list
    return @batch_list
  end

  def find_one ( batch )
    puts batch.keys
    if batch.has_key?("id")
      _batch = find_one_by_id (batch["id"])
      return _batch
    elsif batch.has_key?("name")
      _batch = find_one_by_name (batch["name"])
      return _batch
    else
      return nil
    end
  end


  def to_string
    puts ""
    @batch_list.each do |batch|
      puts "| :id => #{batch.id} , :name => #{batch.name} |"
    end
    return
  end


  private
  private
  def find_one_by_id (id)
    _batch =  @batch_list.find { |batch|  (batch.id.to_i) == id }
    return _batch
  end

  def find_one_by_name (name)
    return @batch_list.find { |batch|  batch.name == name }
  end

end
