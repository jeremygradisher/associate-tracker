json.array!(@associates) do |associate|
  json.extract! associate, :id, :name, :phone_primary, :phone_cell, :email, :email_personal, :address_home, :address_business, :project_history, :position, :working_locations, :notes, :active, :ein_ss, :birthday, :family
  json.url associate_url(associate, format: :json)
end
