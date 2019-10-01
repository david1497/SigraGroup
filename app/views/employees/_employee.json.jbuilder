json.extract! employee, :id, :f_name, :l_name, :d_employment, :position, :created_at, :updated_at
json.url employee_url(employee, format: :json)
