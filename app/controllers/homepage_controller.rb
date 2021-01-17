class HomepageController < ActionController::Base
  def index
    @top_three_coffees = CoffeeBean.top_three_ratings
  end
end