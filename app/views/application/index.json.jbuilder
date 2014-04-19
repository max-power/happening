json.array!(collection) do |resource|
  json.id resource.id.to_s
  json.extract! resource, *attributes
  json.url resource_url(resource, format: :json)
end
