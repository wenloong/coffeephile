class HomepageController < ApplicationController
  def index
    if current_user
      redirect_to dashboard_index_path
    end
    @top_three_coffees = CoffeeBean.top_three_ratings
  end
end