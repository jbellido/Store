json.array!(@rankings) do |ranking|
  json.extract! ranking, :id, :score, :comment, :ranking_date
  json.url ranking_url(ranking, format: :json)
end
