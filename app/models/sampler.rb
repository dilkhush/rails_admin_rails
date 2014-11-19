class Sampler < ActiveRecord::Base
  has_many :wines
  def wines_count
    self.wines.length
  end

  rails_admin do
    edit do
      field :name
      field :wines
    end

    list do
      field :id
      field :name
      field :wines_count do
        formatted_value do 
          value
        end
        label 'Wines Count'
      end
      fields :created_at, :updated_at do
        label do
          "#{label} (timestamp)"
        end
      end
      field :disable do
        label 'disable'
      end
    end

    show do
      field :name
      field :wines_count
    end
  end
end
