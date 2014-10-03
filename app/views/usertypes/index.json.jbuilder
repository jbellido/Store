json.array!(@usertypes) do |usertype|
  json.extract! usertype, :id, :description
  json.url usertype_url(usertype, format: :json)
end
