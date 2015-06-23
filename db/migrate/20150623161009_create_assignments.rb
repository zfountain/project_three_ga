class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :date_name

      t.timestamps null: false
    end
  end
end
