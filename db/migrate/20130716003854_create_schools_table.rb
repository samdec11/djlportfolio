class CreateSchoolsTable < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :first_column
      t.string :second_column
      t.string :third_column
      t.integer :user_id
      t.timestamps
    end
  end
end
