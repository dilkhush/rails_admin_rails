class CreateSamplers < ActiveRecord::Migration
  def change
    create_table :samplers do |t|
      t.string :name
      t.timestamps
    end
  end
end
