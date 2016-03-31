class Associate < ActiveRecord::Base
    has_many :associate_attachments, dependent: :destroy
    accepts_nested_attributes_for :associate_attachments
    has_many :associate_resumes, dependent: :destroy
    accepts_nested_attributes_for :associate_resumes
    has_many :associate_gresumes, dependent: :destroy
    accepts_nested_attributes_for :associate_gresumes
    has_and_belongs_to_many :positions, dependent: :destroy
    has_and_belongs_to_many :wrklocs, dependent: :destroy
    has_many :associate_contracts, dependent: :destroy
    accepts_nested_attributes_for :associate_contracts
    has_many :associate_w9s, dependent: :destroy
    accepts_nested_attributes_for :associate_w9s
    has_many :associate_direct_deposits, dependent: :destroy
    accepts_nested_attributes_for :associate_direct_deposits
    has_many :associate_drivers_licenses, dependent: :destroy
    accepts_nested_attributes_for :associate_drivers_licenses
    has_many :associate_drivers_insurances, dependent: :destroy
    accepts_nested_attributes_for :associate_drivers_insurances
    
    has_and_belongs_to_many :projects
    
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
    #validates :phone_primary, presence: true, length: { minimum: 9, maximum: 10 }
    #validates :phone_cell, length: { minimum: 9, maximum: 10 }
    validates :phone_primary, presence: true
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
    validates :email_personal, :presence => {:message => "Your email is used to save your greeting."}, :allow_blank => true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }

    # adding for the geocode stuff, creating a method
    geocoded_by :compiledaddress
    after_validation :geocode, :if => :primary_street_changed?
    
    def compiledaddress
      [primary_street, primary_city, primary_state, primary_zip].compact.join(', ')
    end
    
end