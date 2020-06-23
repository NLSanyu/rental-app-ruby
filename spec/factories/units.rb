# frozen_string_literal: true

# spec/factories/todos.rb
FactoryBot.define do
  factory :unit do
    unit_code { Faker::Lorem.word }
    area { Faker::Number.number(10) }
    price { Faker::Number.number(10) }
    validates_presence_of :unit_code
    validates_presence_of :area
    validates_presence_of :price
  end
end
