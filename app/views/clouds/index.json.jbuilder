json.array!(@clouds) do |cloud|
  json.extract! cloud, :id, :name
  json.url cloud_url(cloud, format: :json)
end
