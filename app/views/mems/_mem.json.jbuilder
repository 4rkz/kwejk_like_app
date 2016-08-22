json.extract! mem, :id, :name, :description, :user_id, :created_at, :updated_at
json.url mem_url(mem, format: :json)