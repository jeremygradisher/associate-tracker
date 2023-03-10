Rails.application.routes.draw do
  #get 'archived_projects/index'
  #get 'archived_projects/show'
  resources :archived_projects

  resources :project_pdocuments
  resources :project_pw9s
  resources :project_invoices
  resources :project_prevcontracts
  resources :project_pcontracts
  resources :project_pproposals
  resources :project_cicons
  resources :services
  resources :project_picons
  resources :services
  resources :project_picons
  resources :projects
  resources :associate_drivers_insurances
  resources :associate_drivers_licenses
  resources :associate_direct_deposits
  resources :associate_w9s
  resources :associate_contracts
  resources :positions
  resources :wrklocs
  resources :worklocations
  resources :associate_gresumes
  resources :associate_resumes
  resources :associate_attachments
  resources :associates
  devise_for :users, :controllers => { :registrations => 'devise/registrations' }
  resources :users, :only => [:index, :show, :destroy]
  #root 'associates#index'
  root 'home#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
