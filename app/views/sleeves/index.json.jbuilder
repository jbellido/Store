json.array!(@sleeves) do |sleefe|
  json.extract! sleefe, :id, :description
  json.url sleefe_url(sleefe, format: :json)
end
