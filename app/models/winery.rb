class Winery < ActiveRecord::Base
  belongs_to :importer, counter_cache: true 
  has_many :wines
  validates :name, presence: true

  rails_admin do
    edit do
      field :name
      field :importer
    end

    list do
      field :id
      field :name
      field :importer
      fields :created_at, :updated_at
    end

    show do
      field :name
      field :importer
    end
  end
end
