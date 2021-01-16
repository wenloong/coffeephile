class User < ApplicationRecord
  has_one :point, dependent: :destroy
  has_many :brews, dependent: :destroy
end
