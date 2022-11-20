FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "john#{n}@doe.com" }
    password { "password" }
    password_confirmation { "password" }
    phone { "1122223333" }

    trait :company do
     