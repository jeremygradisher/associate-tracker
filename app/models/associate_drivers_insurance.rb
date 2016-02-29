class AssociateDriversInsurance < ActiveRecord::Base
  mount_uploader :drivers_insurance, DriversInsuranceUploader
  belongs_to :associate
end
