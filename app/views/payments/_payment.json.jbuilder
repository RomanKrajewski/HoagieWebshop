json.extract! payment, :id, :payment_type, :amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)