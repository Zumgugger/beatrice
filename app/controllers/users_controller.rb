class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end    

  def show
  end
    
  def new
      @user = User.new
  end #new

  def create
      @user=User.new(user_params)
      if @user.save
        log_in @user
        flash[:notice] = "Registrierung erfolgreich"
        flash[:color]= "valid"
        redirect_to @user
      else
        flash[:notice] = "Form is invalid"
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
    
end #class
