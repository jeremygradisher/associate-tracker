class ProjectPproposal < ActiveRecord::Base
  mount_uploader :pproposal, PproposalUploader
  belongs_to :project
end
