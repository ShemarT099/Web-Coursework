json.extract! sport, :id, :title, :description, :sport_id, :image_url, :created_at, :updated_at
json.url sport_url(sport, format: :json)
