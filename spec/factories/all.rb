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

  factory :step do
    is_first true
    next_id nil
    promotion_name "madmimi_promotion"
  end

  factory :page do
    step
  end

  factory :static_page do
    name "name"
    region1 "region1"
    region2 "region2"
    region3 "region3"
    region4 "region4"
    region5 "region5"
  end
end
