json.extract! todolist, :id, :description, :complete, :user_id, :created_at, :updated_at
json.url todolist_url(todolist, format: :json)
