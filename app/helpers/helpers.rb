class Helpers

  def self.current_user(sessions)
    #binding.pry
    User.find_by_id(sessions[:user_id])
  end

  def self.is_logged_in?(sessions)
    !! sessions[:user_id]
  end
end
