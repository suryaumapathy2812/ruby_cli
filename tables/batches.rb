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

end
