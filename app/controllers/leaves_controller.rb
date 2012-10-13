class LeavesController < ApplicationController
  active_scaffold :leave do |config|
    config.columns = [:user_id, :start_date, :end_date, :description, :status, :unpaid_leaves, 
                      :number_of_paid_leaves_taken, :number_of_unpaid_leaves_taken, :number_of_leaves_remaining ]
  
    config.actions.exclude :create
  end  
  
  before_filter :authenticate_user!
end 