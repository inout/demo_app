class HomeController < ApplicationController
  layout 'main_layout'

  def index
  end

  before_filter :authenticate_user!
end
