FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "john#{n}@doe.com" }
    password { "password" }
    password_confirmation { "password" }
    phone { "1122223333" }

    trait :company do
      cnpj { "17.531.173/0001-39" }
      corporate_name { "Acme Inc." }
      personable_type { :company }
    end

    trait :individual do
      cpf { "934.616.118-32" }
      first_name { "John" }
      last_name { "Doe" }
    