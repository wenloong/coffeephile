class HomepageController < ApplicationController
  def index
    @top_three_coffees = CoffeeBean.top_three_ratings
  end
end