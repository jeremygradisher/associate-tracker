json.array!(@associate_direct_deposits) do |associate_direct_deposit|
  json.extract! associate_direct_deposit, :id, :associate_id, :direct_deposit
  json.url associate_direct_deposit_url(associate_direct_deposit, format: :json)
end
