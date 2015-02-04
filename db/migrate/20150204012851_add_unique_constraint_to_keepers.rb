class AddUniqueConstraintToKeepers < ActiveRecord::Migration
  def change
    add_index :keepers, [:employee_id, :animal_id], unique: true
  end
end
