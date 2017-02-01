class Sauce < ApplicationRecord
  has_and_belongs_to_many :sandwiches
end
