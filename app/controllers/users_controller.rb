class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :admin, only: [:index, :destroy]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :show]
  def index
    @users = User.all
  end #Index   

  def show
  end #show
    
  def new
      @user = User.new
  end #new

  def create
      @user=User.new(user_params)
      if @user.save
      log_in(@user)
#        UserMailer.account_activation(@user).deliver_now
        flash[:success] = "Willkommen"
        redirect_to @user
      else
        flash[:notice] = "Ungültig"
        flash[:color]= "invalid"
        render "new"
      end #if
  end #create

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Benutzerangaben sind aktualisiert' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Benutzer ist gelöscht.' }
      format.json { head :no_content }
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end  #user_params
    
  def set_user
      @user = User.find(params[:id])
  end
  
  def logged_in_user
      unless logged_in?
        flash[:danger] = "Bitte einloggen"
        redirect_to login_url
      end
  end
    
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless @user == current_user
  end
    
end #class
