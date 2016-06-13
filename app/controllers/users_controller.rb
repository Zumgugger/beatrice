class UsersController < ApplicationController
  def new
      @user = User.new
  end #new

  def create
      @user=User.new(user_params)
      if @user.save
        flash[:notice] = "You signed up successfully"
        flash[:color]= "valid"
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
      end #if
  render "new"
  end #create
  
  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end  #user_params
    
end #class
