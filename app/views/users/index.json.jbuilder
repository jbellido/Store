json.array!(@users) do |user|
  json.extract! user, :id, :sncode, :name, :lname, :email, :phone
  json.url user_url(user, format: :json)
end
