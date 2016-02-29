json.array!(@associate_contracts) do |associate_contract|
  json.extract! associate_contract, :id, :associate_id, :contract
  json.url associate_contract_url(associate_contract, format: :json)
end
