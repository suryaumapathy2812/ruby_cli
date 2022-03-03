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

  def find_one (user)
  # puts user.keys
  if user.key?("id")
    find_one_by_id( user['id'] )
  elsif user.key?("name")
    find_one_by_name( user['name'] )
  end

  end


  def find_all (user)
    # puts user.keys
    if user.key?("id")
      find_all_by_id( user['id'] )
    elsif user.key?("name")
      find_all_by_name( user['name'] )
    end

  end



  def to_string
    puts ""
    @user_list.each do |user|
      puts "| :id => #{user.id} , :name => #{user.name} |"
    end
    return
  end


  private

  def find_one_by_id(id)
    @user_list.find { |user|  (user.id.to_i) == id }
  end


  def find_one_by_name(username)
    @user_list.find { |user|  user.name == username }
  end

  def find_all_by_id(id)
    @user_list.find_all { |user|  (user.id.to_i) == id }
  end


  def find_all_by_name(username)
    @user_list.find { |user| user.name == username }
  end

end
