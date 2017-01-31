json.extract! user, :id, :name, :created_at, :billing_information, :billing_address, :delivery_address, :created_at, :updated_at
json.url user_url(user, format: :json)