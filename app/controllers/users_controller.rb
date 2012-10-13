class UsersController < ApplicationController
  active_scaffold :user do |config|
    config.columns = [:first_name, :last_name, :user_name, :mobile, :phone, :birth_date, :joining_date, :is_active, :created_at, :updated_at]
  end
  
  def request_leave
    @user_id = params[:id]
    
    
  end
  before_filter :authenticate_user!
end 
