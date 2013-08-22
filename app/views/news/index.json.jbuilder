json.array!(@news) do |news|
  json.extract! news, :title, :author, :content, :image, :users_id
  json.url news_url(news, format: :json)
end
