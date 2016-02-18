class CreateAssociateResumes < ActiveRecord::Migration
  def change
    create_table :associate_resumes do |t|
      t.integer :associate_id
      t.string :resume

      t.timestamps null: false
    end
  end
end
