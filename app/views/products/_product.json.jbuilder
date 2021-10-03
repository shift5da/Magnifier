json.extract! product, :id, :company, :name, :description, :phone_raw_page, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
