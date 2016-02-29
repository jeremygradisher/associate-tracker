class AssociateW9 < ActiveRecord::Base
    mount_uploader :w9, W9Uploader
    belongs_to :associate
end
