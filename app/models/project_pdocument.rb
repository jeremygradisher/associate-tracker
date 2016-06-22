class ProjectPdocument < ActiveRecord::Base
  mount_uploader :pdocument, PdocumentUploader
  belongs_to :project
end
