class UsersController < ApplicationController
  skip_before_filter :authenticate_user, :only => [:create]

  layout 'application'

  def show
    redirect_to user_path(@user) if @user
  end

  def create
    user = User.find_by_email(params[:email])

    if user.present?
      session[:user_id] = user.id
      user_path(user)
    else
      flash[:error] = "Oops.. Incorrect email, please try again."
      render :show
    end
  end


  def logout
    session[:user_id] = nil
    redirect_to root_path, :success => 'You have been signed out successfully'
  end


end
