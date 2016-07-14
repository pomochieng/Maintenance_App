class UsersController < ApplicationController
  def show
    @user = User.find(params[:id})
    debbugger
  end
  
  
  def new
  end
end
