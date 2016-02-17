class AssociateAttachment < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :associate
end
