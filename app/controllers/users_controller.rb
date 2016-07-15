class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    debbugger
  end
  
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #handle a successful save.
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user0.permit(:name, :email, :password,
                               :password_confirmation)
  end

end
