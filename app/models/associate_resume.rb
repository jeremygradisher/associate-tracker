class AssociateResume < ActiveRecord::Base
  mount_uploader :resume, ResumeUploader
  belongs_to :associate
end
