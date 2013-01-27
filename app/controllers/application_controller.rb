class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  private
  
  def require_login_on_face
    unless loggin_in?
      flash[:error] = "Voce precisa logar com o Facebook"
      redirect_to "/auth/facebook/"
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def loggin_in?
    !!current_user
  end
  helper_method :current_user

end
