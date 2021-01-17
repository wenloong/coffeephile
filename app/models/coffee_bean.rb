class CoffeeBean < ApplicationRecord

  def self.top_three_ratings
    order(rating: :desc).limit(3)
  end

end
