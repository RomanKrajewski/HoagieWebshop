class Bread < ApplicationRecord
  has_and_belongs_to_many sandwiches
end