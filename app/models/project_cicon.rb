class ProjectCicon < ActiveRecord::Base
  mount_uploader :cicon, CiconUploader
  belongs_to :project
  validates_size_of :cicon, maximum: 1.megabytes, message: "Upload should be less than 1MB"
end
