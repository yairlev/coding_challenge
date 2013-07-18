class Manager < User
  has_many :staff_members, :class_name => 'User', :foreign_key => 'user_id'

  private

end
