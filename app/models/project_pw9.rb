class ProjectPw9 < ActiveRecord::Base
  mount_uploader :pw9, Pw9Uploader
  belongs_to :project
end
