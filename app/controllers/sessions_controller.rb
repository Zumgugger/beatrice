class SessionsController < ApplicationController
    def new
    end
    
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in user
            flash[:success] = "Erfolgreich eingeloggt"
            redirect_back_or(root_path)
        else
            flash.now[:danger] = "Email und Passwort passen nicht zusammen"
            render "new"            
        end
    end

    def destroy
        log_out
        redirect_back_or(root_path)
    end
    
    
end
