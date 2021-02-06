class DashboardController < ApplicationController
  
  def index
    if !current_user
      flash[:notice] = "You are not logged in!"
      redirect_to root_path
    end
  end
end