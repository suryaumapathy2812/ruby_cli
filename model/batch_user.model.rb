class BatchUserModel

  attr_accessor :id, :batch_id, :user_id, :role

  def initialize (batch_id, user_id, role)
    @batch_id = batch_id
    @user_id = user_id
    @role = role
  end

end
