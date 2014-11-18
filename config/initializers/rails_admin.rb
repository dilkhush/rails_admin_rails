RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app


    config.model 'Sampler' do
      edit do
        field :name do
          label "Name"
        end
        field :wines do
          label "Wines"
        end
      end

      list do
        fields :created_at, :updated_at do          # adding and configuring
          label do
            "#{label} (timestamp)"
          end
        end
        field :name do
          label 'Name'
        end
        field :wines_count do
          formatted_value do 
            value
          end
          label 'Wines Count'
        end
      end
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
