class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone_number, :role
end
