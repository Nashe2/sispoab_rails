json.extract! person, :id, :name, :first_name, :last_name, :phone, :gender, :created_at, :updated_at
json.url person_url(person, format: :json)
