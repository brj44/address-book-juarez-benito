json.extract! contact, :id, :firstName, :middleName, :lastName, :SSN, :birthDate, :comment, :created_at, :updated_at
json.url contact_url(contact, format: :json)