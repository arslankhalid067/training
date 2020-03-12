json.extract! photo, :id, :title, :comment, :created_at, :updated_at
json.url photo_url(photo, format: :json)
