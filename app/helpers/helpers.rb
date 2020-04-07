require 'pry'
class Helpers < ActiveRecord::Base

  def self.current_user(session)
    @user = User.find_by_id(session[:session_id])
  end

  def self.is_logged_in?(session)
    !!session[:session_id]
  end
end