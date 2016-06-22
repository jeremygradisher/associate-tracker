class CreateProjectInvoices < ActiveRecord::Migration
  def change
    create_table :project_invoices do |t|
      t.integer :project_id
      t.string :invoice

      t.timestamps null: false
    end
  end
end
