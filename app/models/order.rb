class Order < ApplicationRecord
  belongs_to :User
  has_and_belongs_to_many :drinks
  has_and_belongs_to_many :sandwiches
end
