require 'faker'

module Dwl
  FactoryGirl.define do
    factory :user, class: 'Dwl/User' do |f|
      f.email { Faker::Internet.email }
      password 'password'
      password_confirmation 'password'
    end
  end
end
