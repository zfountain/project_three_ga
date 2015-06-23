class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :github_id
      t.string :real_name

      t.timestamps null: false
    end
  end
end
