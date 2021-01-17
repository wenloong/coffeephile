FactoryBot.define do
  factory :coffee_bean do
    bean_type { ["dark", "light"].sample }
    name { Faker::Beer.name }
    brand { Faker::Company.name }
    rating { [0, 1, 2, 3, 4, 5].sample }
  end
end