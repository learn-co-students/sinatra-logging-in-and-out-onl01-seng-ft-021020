class Helpers

    def self.current_user(session)
        #This method should use the user_id from the session hash to find the user in the database and return that user.
        @current_user = User.find_by_id(session[:user_id])
    end

    def self.is_logged_in?(session)
        #This method should return true if the user_id is in the session hash and false if not. The Ruby !! operator will come in handy here.
        !!session[:user_id]
    end

end