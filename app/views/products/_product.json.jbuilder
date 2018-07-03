json.extract! product, :id, :name, :price, :category, :product_type, :picture, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
