json.extract! contact, :id, :client_id, :name, :street, :secondary_address, :city, :zip, :state, :country, :notes, :created_at, :updated_at
json.url contact_url(contact, format: :json)
