json.array!(@photos) do |photo|
  json.extract! photo, :id, :username, :string, :caption, :text, :created_at, :datetime, :likes_count, :integer, :url, :string
  json.url photo_url(photo, format: :json)
end
