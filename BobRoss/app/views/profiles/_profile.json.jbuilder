json.extract! profile, :id, :username, :bio, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
