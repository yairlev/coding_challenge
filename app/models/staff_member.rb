class StaffMember < User
  belongs_to :manager, :class_name => 'User', :foreign_key => 'user_id'

  private

end
