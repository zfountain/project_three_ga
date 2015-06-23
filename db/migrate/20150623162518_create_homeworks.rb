class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.boolean :complete
      t.references :student, index: true, foreign_key: true
      t.references :assignment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
