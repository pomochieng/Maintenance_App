module SessionsHelper

  #Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  #Remember a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end


  #Returns the curent logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  
  #Forget a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  #Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
end
