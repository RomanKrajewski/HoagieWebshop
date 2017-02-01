FactoryGirl.define do
  factory :ingredient do
    name "Liebe"
    price "0.99"
  end

  factory :ingredient2, class: Ingredient do
    name "Hass"
    price "1000.00"
  end
end