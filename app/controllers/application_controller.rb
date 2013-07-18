class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user
  helper_method :current_user

  protected

  def authenticate_user
    if (current_user.nil?)
      redirect_to users_path
    elsif !is_authorized?(@user)
      user_path(@user)
    end
  end

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_path(user)
    user.is_a?(Manager) ? manager_path(user) : staff_member_path(user)
  end

  def is_authorized?(user)
    if user.nil?
      false
    elsif user.is_a? Manager
      #full access
      return true
    elsif user.is_a? StaffMember
      return true if (controller.controller_name == "StaffMembersController")
    end
  end



end
