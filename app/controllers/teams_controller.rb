class TeamsController < ApplicationController
  active_scaffold :team do |config|
    config.columns[:name].inplace_edit = true
  end
  
  before_filter :authenticate_user!
end 