# Read about factories at https://github.com/thoughtbot/factory_girl

require 'ffaker'
FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "#{n}#{Faker::Internet.email}" }
    name  Faker::Name.name
    password "password"
    password_confirmation "password"
    provider "facebook"
    fb_token nil
    fb_token_expiry nil
  end

  factory :affiliate do
    name Faker::Lorem.word
  end
end

