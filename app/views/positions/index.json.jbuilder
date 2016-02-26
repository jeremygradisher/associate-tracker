json.array!(@positions) do |position|
  json.extract! position, :id, :pos_name
  json.url position_url(position, format: :json)
end
