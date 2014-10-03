json.array!(@designs) do |design|
  json.extract! design, :id, :name, :image_url, :ispublic, :comment, :design_date
  json.url design_url(design, format: :json)
end
