class ProjectPicon < ActiveRecord::Base
  mount_uploader :picon, PiconUploader
  belongs_to :project
  validates_size_of :picon, maximum: 1.megabytes, message: "Upload should be less than 1MB"
end
