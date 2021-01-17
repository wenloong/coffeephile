# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CoffeeBean.destroy_all
User.destroy_all
Brew.destroy_all

user_list = FactoryBot.create_list(:user, 3, password: "password")

user_list.each_with_index do |user, idx|
  FactoryBot.create_list(:brew, 5, user: user)
  if idx == 0
    Point.create(value: [0..10].sample, user: user)
  end
end

FactoryBot.create_list(:coffee_bean, 10)