class AddColumnsToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :artist_statement, :text
    add_column :users, :bio_image, :text
    add_column :users, :contact_image, :text
  end
end
