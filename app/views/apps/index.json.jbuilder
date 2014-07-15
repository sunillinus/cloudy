json.array!(@apps) do |app|
  json.extract! app, :id, :name, :app_dictionary_entry_id, :cloud_id
  json.url app_url(app, format: :json)
end
