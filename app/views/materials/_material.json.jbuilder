json.extract! material, :id, :name, :description, :quantity, :unit_price, :is_thread, :created_at, :updated_at
json.url material_url(material, format: :json)
