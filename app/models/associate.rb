class Associate < ActiveRecord::Base
    has_many :associate_attachments, dependent: :destroy
    accepts_nested_attributes_for :associate_attachments
    has_many :associate_resumes, dependent: :destroy
    accepts_nested_attributes_for :associate_resumes
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
    validates :phone_primary, presence: true, length: { minimum: 10, maximum: 14 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
    validates :email_personal, :presence => {:message => "Your email is used to save your greeting."}, :allow_blank => true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
    validates :position, presence: true
    validates :working_locations, presence: true
    #validates :avatar, presence: true
end