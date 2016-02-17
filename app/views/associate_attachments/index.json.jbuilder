json.array!(@associate_attachments) do |associate_attachment|
  json.extract! associate_attachment, :id, :associate_id, :avatar
  json.url associate_attachment_url(associate_attachment, format: :json)
end
