class Project < ActiveRecord::Base
  
    has_and_belongs_to_many :associates
  
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 50 }
  
    # adding for the geocode stuff, creating a method
    geocoded_by :pcompiledaddress
    after_validation :geocode, :if => :project_street_changed?
    
    def pcompiledaddress
      [project_street, project_city, project_state, project_zip].compact.join(', ')
    end
end
