class User < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model  
  attr_accessible :birth_date, :first_name, :last_name, :user_name, :mobile, :phone, :is_active, :joining_date
  has_many :leaves 
  
end
