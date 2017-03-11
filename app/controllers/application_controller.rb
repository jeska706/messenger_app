class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :current_user
    # alias_method :current_user, :current_trainer

    def auth_required
        unless current_user
            session[:target_url] = request.fullpath
            redirect_to new_session_path, :flash => { :error => "This site is protected. Please log in first." }
        end
    end


    private

    # def current_user
        # current_user || current_trainer
        # @current_user ||= User.find(session[:user_id] if session[:user_id]) || Trainer.find(session[:trainer_id] if session[:trainer_id])
    # end
end
