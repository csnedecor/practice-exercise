class CreateKeepers < ActiveRecord::Migration
  def change
    create_table :keepers do |t|
      t.belongs_to :employee, null: false
      t.belongs_to :animal, null: false

      t.timestamps
    end
  end
end
