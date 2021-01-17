class ShopController < ApplicationController
    def index
        @coffee_beans = CoffeeBean.bottom_three_ratings
        @user = User.first
    end
  end
  