class ShopController < ApplicationController
    def index
        @coffee_beans = CoffeeBean.bottom_three_ratings
    end
  end
  