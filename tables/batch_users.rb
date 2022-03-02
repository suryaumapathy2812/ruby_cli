require_relative "./../model/batch_user.model.rb"

class BatchUsers

  def initialize ()
    @batch_user_list = []
  end

  def insert_one (batch_id, user_id, role)
    _batch_user = BatchUserModel.new( batch_id, user_id, role )
    _batch_user.id = @batch_user_list.length.to_i + 1
    @batch_user_list.push(_batch_user)
  end


end
