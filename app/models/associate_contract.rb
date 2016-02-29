class AssociateContract < ActiveRecord::Base
  mount_uploader :contract, ContractUploader
  belongs_to :associate
end
