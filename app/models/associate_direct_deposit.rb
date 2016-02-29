class AssociateDirectDeposit < ActiveRecord::Base
  mount_uploader :direct_deposit, DirectDepositUploader
  belongs_to :associate
end
