class Wine < ActiveRecord::Base
  belongs_to :winery, counter_cache: true
  validates :name, presence: true
  belongs_to :sampler

  def importer_name
    self.winery.try(:importer).try(:name)
  end

  rails_admin do
    edit do
      field :name
      field :winery
    end

    list do
      field :id
      field :name
      field :winery
      field :importer_name do
        formatted_value do
          value
        end
        label 'Importer'
      end
      fields :created_at, :updated_at
    end

    show do
      field :name
      field :winery
    end
  end
end
