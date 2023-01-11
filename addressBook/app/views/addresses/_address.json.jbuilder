json.extract! address, :id, :firstName, :middleName, :lastName, :street, :town, :zipCode, :state, :country, :comment, :created_at, :updated_at
json.url address_url(address, format: :json)
