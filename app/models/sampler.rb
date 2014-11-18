class Sampler < ActiveRecord::Base
  has_many :wines
  def wines_count
    self.wines.length
  end
end
