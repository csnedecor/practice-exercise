FactoryGirl.define do
  factory :employee do
    sequence(:email) { |n| "test#{n}@example.com" }
    sequence(:name) { |n| "Joe#{n}" }
  end
end
