class ManagersController < ApplicationController
  layout 'users'

  def index

  end

  def show

  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to user_path(@user), :notice => "Manager was successfully updated."
    else
      flash.now[:error] = @user.errors.full_messages.join(", ")
      render :edit
    end
  end

  def edit

  end

end
