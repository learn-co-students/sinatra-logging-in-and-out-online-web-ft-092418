class Helpers

  def self.current_user(sess)
    User.find_by_id(sess[:user_id])
  end

  def self.is_logged_in?(sess)
    User.find_by_id(sess[:user_id]) ? true : false
  end

end
