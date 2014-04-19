json.id resource.id.to_s
json.extract! resource, *attributes
json.extract! resource, :created_at, :updated_at
