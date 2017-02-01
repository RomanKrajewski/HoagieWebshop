FactoryGirl.define do
  factory :sandwich do
    bread_type "Vollkorn"
    sauce 'Ketchup'
    price "7,99"
  end

  factory :sandwich2, class: Sandwich do
    bread_type "Weißbrot"
    sauce 'BBQ'
    price "1000.00"
  end
end