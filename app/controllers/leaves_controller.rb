class LeavesController < ApplicationController
  layout 'main_layout'

	active_scaffold :leave do |config|
		config.columns = [
			:user_id, :start_date, :end_date, :description, :status,
			:paid_leaves_taken, :unpaid_leaves_taken, :leaves_remaining
		]

		#config.actions.exclude :create
	end

  before_filter :authenticate_user!
end
