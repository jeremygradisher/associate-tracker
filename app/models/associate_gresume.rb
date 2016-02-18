class AssociateGresume < ActiveRecord::Base
  mount_uploader :gresume, GresumeUploader
  belongs_to :associate
end
