require 'factory_girl'


FactoryGirl.define do
  factory :user, class: User do

    sequence(:billing_information) {|n| "person-#{n}@okfoc.us" }
    sequence(:name) {|n| "cool #{n}" }
    billing_address 'thisisa billingaddress'
    delivery_address 'thisisa-deliveryaddress'


    factory :user_with_orders do

      transient do
        order_count 10
      end


      after(:create) do |user, evaluator|
        create_list(:order, evaluator.order_count, User: user)
        create_list(:selfie_post, evaluator.order_count, User: user)
      end
    end
  end
end