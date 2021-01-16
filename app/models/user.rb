class User < ApplicationRecord
  has_one :point
  has_many :brews
end
