json.array!(@app_dictionary_entries) do |app_dictionary_entry|
  json.extract! app_dictionary_entry, :id, :name
  json.url app_dictionary_entry_url(app_dictionary_entry, format: :json)
end
