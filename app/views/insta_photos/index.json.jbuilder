json.array!(@insta_photos) do |insta_photo|
  json.extract! insta_photo, :id, :username, :caption, :likes_count, :url
  json.url insta_photo_url(insta_photo, format: :json)
end
