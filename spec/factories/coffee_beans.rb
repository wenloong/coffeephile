FactoryBot.define do
  factory :coffee_bean do
    type { ["dark", "light"].sample }
    name { Faker::Beer.name }
    brand { Faker::Company.name }
  end
end