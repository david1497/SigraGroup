json.extract! contact_request, :id, :u_name, :u_email, :u_tel, :u_message, :created_at, :updated_at
json.url contact_request_url(contact_request, format: :json)
