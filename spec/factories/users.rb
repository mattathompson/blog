FactoryGirl.define do
  factory :user do
    first_name               "Random String"
    last_name                "Random String"
    email                    "random@example.com"
    password                 "randompass"
    password_confirmation    "randompass"
  end

end
