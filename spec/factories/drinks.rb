FactoryGirl.define do
  factory :drink do
    name "Aphrodisiakum"
    price "99.99"
  end

  factory :drink2, class: Drink do
    name "Bier"
    price "0.23"
  end
end