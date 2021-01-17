class CoffeeBeansController < ApplicationController
    def index
      @coffee_beans = CoffeeBean.all
    end
  end
  