json.extract! sandwich, :id, :bread_type, :sauce, :price, :created_at, :updated_at
json.url sandwich_url(sandwich, format: :json)