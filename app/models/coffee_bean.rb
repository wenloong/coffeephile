class CoffeeBean < ApplicationRecord

  def self.top_three_ratings
    order(rating: :desc).limit(3)
  end

  def self.bottom_three_ratings
    order(rating: :asc).limit(3)
  end

end
