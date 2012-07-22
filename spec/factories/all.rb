# Read about factories at https://github.com/thoughtbot/factory_girl

require 'ffaker'
FactoryGirl.define do
  factory :subscriber do
    # sequence(:email) { |n| "#{n}#{Faker::Internet.email}" }
    email "test@test.com"
    name  "bob"
    # password "password"
    # password_confirmation "password"
  end

  factory :affiliate do
    name "affiliate1"
  end

  factory :category do
    name "category1"
  end
end

