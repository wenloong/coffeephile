class PopularCoffeeController < ActionController::Base
    def list
        @popular_coffee = CoffeeBean.all
    end
end