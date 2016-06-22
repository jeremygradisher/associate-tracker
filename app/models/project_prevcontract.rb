class ProjectPrevcontract < ActiveRecord::Base
  mount_uploader :prevcontract, PrevcontractUploader
  belongs_to :project
end
