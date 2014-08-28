json.array!(@mcroposts) do |mcropost|
  json.extract! mcropost, :content, :user_id
  json.url mcropost_url(mcropost, format: :json)
end