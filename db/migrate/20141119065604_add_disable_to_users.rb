class AddDisableToUsers < ActiveRecord::Migration
  def up
    add_column :users, :disable, :boolean, :default => false
  end

  def down 
    remove_column :users, :disable, :boolean
  end
end
