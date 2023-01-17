class CreateAssociateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :associate_attachments do |t|
      t.integer :associate_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
