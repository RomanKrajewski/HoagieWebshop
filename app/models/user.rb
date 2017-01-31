class User < ApplicationRecord
  has_many :orders
  has_many :selfie_posts
end
