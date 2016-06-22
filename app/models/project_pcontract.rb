class ProjectPcontract < ActiveRecord::Base
  mount_uploader :pcontract, PcontractUploader
  belongs_to :project
end
