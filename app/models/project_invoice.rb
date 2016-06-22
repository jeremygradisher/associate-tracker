class ProjectInvoice < ActiveRecord::Base
  mount_uploader :invoice, InvoiceUploader
  belongs_to :project
end
