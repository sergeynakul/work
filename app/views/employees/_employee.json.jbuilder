json.extract! employee, :id, :name, :active, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
