class AddCertificationsToAssociates < ActiveRecord::Migration
  def change
    add_column :associates, :certifications, :string
  end
end
