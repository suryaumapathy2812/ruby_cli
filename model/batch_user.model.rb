class BatchUserModel

  attr_accessor :id, :batch_id, :user_id

  def initialize ( batch_id, user_id)
    @batch_id = batch_id
    @user_id = user_id
  end

end
