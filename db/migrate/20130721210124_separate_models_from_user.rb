class SeparateModelsFromUser < ActiveRecord::Migration
  def change
    remove_column :exhibitions, :user_id
    remove_column :schools, :user_id
    remove_column :teaching_positions, :user_id
  end
end
