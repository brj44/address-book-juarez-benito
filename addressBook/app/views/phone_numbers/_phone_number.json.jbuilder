json.extract! phone_number, :id, :firstName, :middleName, :lastName, :number, :comment, :created_at, :updated_at
json.url phone_number_url(phone_number, format: :json)
