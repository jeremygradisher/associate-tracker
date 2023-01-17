class CreateAssociateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :associate_resumes do |t|
      t.integer :associate_id
      t.string :resume

      t.timestamps null: false
    end
  end
end
