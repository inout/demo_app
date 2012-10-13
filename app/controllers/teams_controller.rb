class TeamsController < ApplicationController
  active_scaffold :team do |conf|
  end
  
  before_filter :authenticate_user!
end 