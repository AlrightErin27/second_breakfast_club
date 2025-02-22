json.extract! post, :id, :title, :body, :author, :posted_at, :created_at, :updated_at
json.url post_url(post, format: :json)
