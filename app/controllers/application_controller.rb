class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user
  # protect_from_forgery with: :null_session

  def gttr
    render :gttr
  end

	def current_user
		if session[:current_user_id]
			@user = User.find(session[:current_user_id])
      return @user
		end
	end

	def logged_in?
	!!current_user
	end

end
