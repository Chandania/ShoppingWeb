FactoryBot.define do
  factory :sub_category do
    name {"snacks"}
    category { create(:category) }
  end
end