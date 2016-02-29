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
    
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
    validates :phone_primary, presence: true, length: { minimum: 9, maximum: 10 }
    validates :phone_cell, length: { minimum: 9, maximum: 10 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
    validates :email_personal, :presence => {:message => "Your email is used to save your greeting."}, :allow_blank => true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }

   
    filterrific(
      default_filter_params: { sorted_by: 'created_at_desc' },
      available_filters: [
        :sorted_by,
        :search_query
      ]
    )

  # default for will_paginate
  #self.per_page = 10

  #belongs_to :country

  scope :search_query, lambda { |query|
    return nil  if query.blank?
    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)
    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conditions = 4
    where(
      terms.map {
        or_clauses = [
          "LOWER(associates.name) LIKE ?",
          "LOWER(associates.email) LIKE ?",
          "LOWER(associates.email_personal) LIKE ?",
          "LOWER(associates.primary_state) LIKE ?"
          #"LOWER(associates_wrklocs) LIKE ?",
          #"LOWER(associates.position) LIKE ?"
        ].join(' OR ')
        "(#{ or_clauses })"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conditions }.flatten
    )
  }
  

  

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^created_at_/
      order("associates.created_at #{ direction }")
    when /^name_/
      order("LOWER(associates.name) #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }
  
  def self.options_for_sorted_by
    [
      ['Name (a-z)', 'name_asc'],
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc'],
      ['Country (a-z)', 'country_name_asc']
    ]
  end
end
