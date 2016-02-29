json.array!(@associate_drivers_insurances) do |associate_drivers_insurance|
  json.extract! associate_drivers_insurance, :id, :associate_id, :drivers_insurance
  json.url associate_drivers_insurance_url(associate_drivers_insurance, format: :json)
end
