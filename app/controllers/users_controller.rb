class UsersController < ApplicationController
  layout 'main_layout'
  
  active_scaffold :user do |config|
    config.columns = [
      :first_name, :last_name, :user_name, :email, :encrypted_password, :mobile, :phone, :birth_date, :joining_date, 
      :is_active, :created_at, :updated_at
    ]
    config.columns[:first_name].inplace_edit = true
    config.columns[:last_name].inplace_edit = true
    config.columns[:user_name].inplace_edit = true
    config.columns[:mobile].inplace_edit = true
    config.columns[:phone].inplace_edit = true
        
  end
  
  def request_leave
    
  end
  
  before_filter :authenticate_user!
end 
