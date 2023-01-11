json.extract! email, :id, :firstName, :middleName, :lastName, :emailAddress, :comment, :created_at, :updated_at
json.url email_url(email, format: :json)
