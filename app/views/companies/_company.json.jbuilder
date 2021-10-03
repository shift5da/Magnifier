json.extract! company, :id, :name, :address, :image, :contact, :contact_phone, :created_at, :updated_at
json.url company_url(company, format: :json)
