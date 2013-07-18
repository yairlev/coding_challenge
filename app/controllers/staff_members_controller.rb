class StaffMembersController < ApplicationController
  layout 'users'

  def index

  end

  def show

  end

  def edit

  end

  def new
    @staff_member = StaffMember.new
  end

  def create
    @staff_member = @user.staff_members.create(params[:staff_member])

    if @staff_member.errors.none?
      redirect_to user_path(current_user)
    else
      flash.now[:error] = @staff_member.errors.full_messages.join(", ")
      render :new
    end
  end

end
