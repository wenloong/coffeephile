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
Article.destroy_all

user_list = FactoryBot.create_list(:user, 3, password: "password")

user_list.each do |user|
  FactoryBot.create_list(:brew, 5, user: user)
  Point.create(value: [5, 6, 7, 8, 9, 10].sample, user: user)
end

#FactoryBot.create_list(:coffee_bean, 10)
CoffeeBean.create(brand: "Philz Coffee", name: "Tesora", extra_details: "Seven years in the making and the first blend created by Phil himself, the Tesora is the quintessential Philz blend.",
  roast_level: 4, rating: 5, geography: "Kayanza, Burundi", flavor: "Caramel", processing: "Washed")

CoffeeBean.create(brand: "Four Barrel", name: "Guatemala Retana", extra_details: "Guatemala Retana's Yellow and Red Bourbon has been gracing our cupping table annually with its unique acidity and remarkable balance.",
  roast_level: 7, rating: 5, geography: "Antigua", flavor: "Bourbon", processing: "Natural")

CoffeeBean.create(brand: "Four Barrel", name: "Ethiopia Bedhatu", extra_details: "Our good friends at Royal Coffee have been bringing in gorgeous Ethiopian coffees for decades and we're often the benefactors of their hard work.",
  roast_level: 3, rating: 5, geography: "Ethiopia", flavor: "Apricot", processing: "Natural")

CoffeeBean.create(brand: "Ritual Coffee", name: "Los Gigantes", extra_details: "Grown at elevations ranging from 1500-1900 meters above sea level, these coffees are processed through small washing stations at each farm and then dried on raised beds under parabolic covers.",
  roast_level: 5, rating: 4, geography: "Hulia, Colombia", flavor: "Fruity", processing: "Washed")

CoffeeBean.create(brand: "Ritual Coffee", name: "El Ángel", extra_details: "Alejandra and her two sisters have prepared this lot as a “white honey” coffee – they remove the skin and most of the coffee fruit from the seed and allow the coffee to dry with just a hint of mucilage remaining behind. ",
  roast_level: 5, rating: 4, geography: "Tarrazú, Costa Rica", flavor: "Fruity", processing: "White Honey")

CoffeeBean.create(brand: "Ritual Coffee", name: "Mugano", extra_details: "That extra time generates more complex sugars, bringing a natural sweetness to the coffee.",
  roast_level: 8, rating: 3, geography: "Buraza Commune, Burundi", flavor: "Bourbon", processing: "Washed")

CoffeeBean.create(brand: "Happy Mug", name: "Nutty Brazil", extra_details: "We rarely roast Brazil for brewing as coffee because they tend to also be a little dirty tasting and muddy, but this one is clean and sweet and delicious. ",
  roast_level: 5, rating: 2, geography: "Sitio, Brazil", flavor: "Chocolatey", processing: "Washed")

Article.create(username: "sleepyowl31", title: "Coffee anyone?", post: "I can't help but drink coffee whenever I get the chance. As a result, I always end up staying up awake late at nights. Can anyone relate or is it just me?",
  numLikes: 301030, numComments: 30)

Article.create(username: "MelonMusk", title: "To the moon", post: "Dogecoin is about to head to the moon. You're welcome (:",
  numLikes: 3021030, numComments: 3033)
  
Article.create(username: "admin", title: "Test Post", post: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  numLikes: 231, numComments: 12)

Article.create(username: "sleepyowl31", title: "Coffee anyone?", post: "I can't help but drink coffee whenever I get the chance. As a result, I always end up staying up awake late at nights. Can anyone relate or is it just me?",
  numLikes: 301030, numComments: 30)

Article.create(username: "MelonMusk", title: "To the moon", post: "Dogecoin is about to head to the moon. You're welcome (:",
  numLikes: 3021030, numComments: 3033)
  
Article.create(username: "admin", title: "Test Post", post: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  numLikes: 231, numComments: 12)