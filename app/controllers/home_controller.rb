class HomeController < ApplicationController
  def index
    @user = User.find(3);
  end
  
  before_filter :authenticate_user!
end 