json.extract! selfie_post, :id, :description, :picture_url, :User_id, :created_at, :updated_at
json.url selfie_post_url(selfie_post, format: :json)