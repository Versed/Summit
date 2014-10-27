class UserSessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to school_path(user.school)
    else
      flash[:error] = "There was a problem logging in. Please try again."
      render action: 'new'
    end
  end
end
