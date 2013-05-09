class CreateLinksTable < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :display
      t.string :address
      t.timestamps
    end
  end
end
