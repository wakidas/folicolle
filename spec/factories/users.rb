# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "#{n}@example.com" }
    password { 'hogehoge' }

    trait :confirmed do
      before(:create, &:skip_confirmation!)
    end

    trait :skipped_confirmation_mail do
      before(:create, &:skip_confirmation_notification!)
    end
  end
end
