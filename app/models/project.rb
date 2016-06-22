class Project < ActiveRecord::Base
  
    has_and_belongs_to_many :associates
    
    has_and_belongs_to_many :services, dependent: :destroy
    
    has_many :project_picons, dependent: :destroy
    accepts_nested_attributes_for :project_picons
    
    has_many :project_cicons, dependent: :destroy
    accepts_nested_attributes_for :project_cicons
    
    has_many :project_pproposals, dependent: :destroy
    accepts_nested_attributes_for :project_pproposals
    
    has_many :project_pcontracts, dependent: :destroy
    accepts_nested_attributes_for :project_pcontracts
  
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 50 }
  
    # adding for the geocode stuff, creating a method
    geocoded_by :pcompiledaddress
    after_validation :geocode, :if => :project_street_changed?
    
    def pcompiledaddress
      [project_street, project_city, project_state, project_zip].compact.join(', ')
    end
end
