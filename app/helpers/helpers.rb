class Helpers
  def self.current_user(session_hash)
    User.find_by_id(session_hash[:user_id])
  end

  def self.is_logged_in?(session_hash)
    user = User.find_by_id(session_hash[:user_id])
    if user
      true
    else
      false
    end
  end
end
