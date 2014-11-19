class AddDisableToSamplers < ActiveRecord::Migration
  
  def up
    add_column :samplers, :disable, :boolean, :default => false
  end

  def down 
    remove_column :samplers, :disable, :boolean
  end

end
