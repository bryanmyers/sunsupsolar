json.array!(@installations) do |installation|
  json.extract! installation, :address, :city, :zip, :users_id
  json.url installation_url(installation, format: :json)
end
