class CreateAssociateAttachments < ActiveRecord::Migration
  def change
    create_table :associate_attachments do |t|
      t.integer :associate_id
      t.string :avatar

      t.timestamps null: false
    end
  end
end
