json.array!(@associate_drivers_licenses) do |associate_drivers_license|
  json.extract! associate_drivers_license, :id, :associate_id, :drivers_license
  json.url associate_drivers_license_url(associate_drivers_license, format: :json)
end
