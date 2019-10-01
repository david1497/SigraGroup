Rails.application.routes.draw do
  resources :services
  resources :partners
  resources :contact_requests
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'

  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'welcome#index' do
	resources :contact_requests
  end

end