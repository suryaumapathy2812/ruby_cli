require_relative "./../model/user.model.rb"

class Users

  def initialize()
    @user_list = []
  end

  def insert_one( user_name )
    _user = UserModel.new(user_name)
    _user.id = @user_list.length.to_i + 1

    @user_list.push( _user )
  end

  def list
    return @user_list
  end

  def to_string
    puts ""
    @user_list.each do |user|
      puts "| :id => #{user.id} , :name => #{user.name} |"
    end
    return
  end

end
