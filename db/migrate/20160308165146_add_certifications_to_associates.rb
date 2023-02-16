class AddCertificationsToAssociates < ActiveRecord::Migration[5.0]
  def change
    add_column :associates, :certifications, :string
  end
end
