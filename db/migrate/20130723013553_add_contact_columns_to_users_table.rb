class AddContactColumnsToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :string
    add_column :users, :facebook, :string
    add_column :users, :tumblr, :string
    add_column :users, :contact_message, :text
  end
end
