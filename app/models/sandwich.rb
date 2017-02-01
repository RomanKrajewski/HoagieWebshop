class Sandwich < ApplicationRecord
  has_and_belongs_to_many :ingredients
  has_and_belongs_to_many :orders
end
