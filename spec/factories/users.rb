FactoryBot.define do
  factory :user do
    f_name { Faker::Kpop.boy_bands }
    l_name { Faker::Kpop.girl_groups }
    username { Faker::Internet.email }
    password { Faker::Name.name }
    recent_login_date { DateTime.now }
    streak { 0 }
  end
end