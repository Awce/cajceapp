json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :user_id
  json.url service_url(service, format: :json)
end
