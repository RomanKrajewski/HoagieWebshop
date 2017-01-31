json.extract! employee, :id, :employee_type, :name, :status, :created_at, :updated_at
json.url employee_url(employee, format: :json)