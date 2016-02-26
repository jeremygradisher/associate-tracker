class Wrkloc < ActiveRecord::Base
    has_and_belongs_to_many :associates, dependent: :destroy
end
