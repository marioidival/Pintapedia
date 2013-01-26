class UsersController < ActionController::Base
  def omniauth_failure
    redirect_to root_path
  end
end
