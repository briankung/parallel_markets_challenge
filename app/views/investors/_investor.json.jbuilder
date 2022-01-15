json.extract! investor, :id, :first_name, :last_name, :dob, :phone_number, :street_address, :state, :zip_code, :photo_identification, :created_at, :updated_at
json.url investor_url(investor, format: :json)
json.photo_identification url_for(investor.photo_identification)
