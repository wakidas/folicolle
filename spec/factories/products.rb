# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    association :user, :confirmed

    title { 'タイトル' }
    body { '渾身の力作です' }
    url { 'http://example.com' }
  end
end
