class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.finf_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
      #log the user in and redirect to the user's show page.
    else
      #create an error message
      flash[:danger] = 'Invalid email/password combination' #Not quite right!
      render 'new'
    end
  end

  def destroy
  end

end
