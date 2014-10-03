json.array!(@necks) do |neck|
  json.extract! neck, :id, :description
  json.url neck_url(neck, format: :json)
end
