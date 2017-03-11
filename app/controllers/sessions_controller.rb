class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(id: params[:id][:email])

        if user && user.authenticate(params[:id][:password])
            session[:user_id] = user.id || session[:trainer_id] = trainer_id
            redirect_to root_path, notice: 'Successfully logged in'
        else
            flash.now.alert = "Invalid email or password"
            render :new
        end
    end

    def destroy
        session[:user_id] = nil || session[:trainer_id] = nil
        redirect_to root_path, notice: 'Successfully Logged out'
    end
end
