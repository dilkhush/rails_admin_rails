class Importer < ActiveRecord::Base
  has_many :wineries

  rails_admin do
    edit do
      field :name
      field :wineries
    end

    list do
      field :id
      field :name
      field :wineries_count
      fields :created_at, :updated_at
    end

    show do
      field :name
      field :wineries_count
    end
  end
end
