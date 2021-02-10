class DashboardController < ApplicationController
  def index
    @articles = Article.all
    if !current_user
      flash[:notice] = "You are not logged in!"
      redirect_to new_user_session_path
    end
  end
end