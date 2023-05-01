FactoryBot.define do
  factory :product do
    name {"chips"}
    sub_category { create(:sub_category) }
    price {199}
    description {"crispy and tasty"}
  end
end