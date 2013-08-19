json.array!(@users) do |user|
  json.extract! user, :name, :email, :phone, :address, :zip, :best_time, :e_bill, :access, :password
  json.url user_url(user, format: :json)
end
