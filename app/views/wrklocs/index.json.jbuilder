json.array!(@wrklocs) do |wrkloc|
  json.extract! wrkloc, :id, :wrkstate
  json.url wrkloc_url(wrkloc, format: :json)
end
