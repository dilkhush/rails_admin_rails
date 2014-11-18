class AddSamplerIdToWines < ActiveRecord::Migration
  def change
    add_column :wines, :sampler_id, :integer
  end
end
