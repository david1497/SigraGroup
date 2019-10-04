RailsAdmin.config do |config|

#  config.model employee do
#    edit do
#      field :description, :ck_editor
#    end
#  end
  # config.authenticate_with do
  #   authenticate_or_request_with_http_basic('Login required') do |name, password, key|
  #     user = User.where(name: name, password: password, key: key).first
  #     user
  #   end
  # end
  config.model "Partner" do
    label "Clients"
    list do 
      field :p_name do 
        label "Name"
      end
      field :p_link do
        label "Link"
      end
    end
  end

  config.model "Employee" do
    list do
      field :f_name do
        label "First Name"
      end
      field :l_name do
        label "Last Name"
      end
      field :position do
        label "Position"
      end
      field :email do 
        label "Email"
      end
    end
  end

  config.model "ContactRequest" do
    label "Requests"
    field :id do
      label "Number"
    end
    field :u_name do
      label "Name"      
    end
    field :u_email do
      label "Email"
    end
    field :u_tel do
      label "Phone"
    end
    field :created_at do
      label "Sent"
    end
  end

  config.model "Service" do
    field :name do
      label "Name"
    end
    field :created_at do
      label "Created"
    end
    field :updated_at do
      label "Updated"
    end
  end

  config.model "Mission" do
    list do
      items_per_page 1
    end
  end
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true



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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
