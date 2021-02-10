class Article < ApplicationRecord
  def self.top_trending
    order(numLikes: :desc).limit(7)
  end
end
