FactoryBot.define do
  factory :user do
    f_name { Faker::Kpop.boy_bands }
    l_name { Faker::Kpop.girl_groups }
    email { Faker::Internet.email }
    encrypted_password { "password" }
    streak { 0 }
  end
end