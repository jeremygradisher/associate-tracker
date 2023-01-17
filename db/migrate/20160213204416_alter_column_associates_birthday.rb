class AlterColumnAssociatesBirthday < ActiveRecord::Migration[5.0]
  def self.up
    change_table :associates do |t|
      t.change :birthday, :string
    end
  end
  def self.down
    change_table :associates do |t|
      t.change :birthday, :date
    end
  end
end