json.array!(@project_invoices) do |project_invoice|
  json.extract! project_invoice, :id, :project_id, :invoice
  json.url project_invoice_url(project_invoice, format: :json)
end
