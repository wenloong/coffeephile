class Brew < ApplicationRecord
  belongs_to :user

  def self.most_recent_brews
    Brew.order(created_at: :desc)
  end
end
