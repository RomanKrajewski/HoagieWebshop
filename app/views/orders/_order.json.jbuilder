json.extract! order, :id, :extras, :price, :User_id, :created_at, :updated_at
json.url order_url(order, format: :json)