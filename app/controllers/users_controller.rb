class UsersController < ApplicationController
  layout 'main_layout'

  active_scaffold :user do |config|
    config.columns = [
      :first_name, :last_name, :user_name, :email, :contact_no, :birth_date, :joining_date, :is_active
    ]
    config.columns[:first_name].inplace_edit = true
    config.columns[:last_name].inplace_edit = true
    config.columns[:user_name].inplace_edit = true
    config.columns[:contact_no].inplace_edit = true

  end

  def request_leave
    @unpaid_leaves_taken = 0
    @user = User.find params[:id]
		@leaves = @user.leave
		@paid_leaves_remaining = (@leaves.last.nil?) ? 18 : @leaves.last[:leaves_remaining]

		@leaves.each do |leave|
		  @unpaid_leaves_taken += leave[:unpaid_leaves_taken]
		end
  end

  def send_for_approval
    @user_name = params[:username]
    @from_date = params[:fromdate]
    @to_date = params[:todate]
    @no_of_days = params[:noofdays]
    @name = params[:Name]
  end

  def send_email
    @users = User.new
    if @users.save
      redirect_to(:controller => 'home', :action =>'index')
    end
  end

  before_filter :authenticate_user!
end
