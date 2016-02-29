class AssociateDriversLicense < ActiveRecord::Base
  mount_uploader :drivers_license, DriversLicenseUploader
  belongs_to :associate
end
