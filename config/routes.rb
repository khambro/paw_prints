Rails.application.routes.draw do

  root to: "users#index"


  get "/new-owner", to: "users#new_owner", as: :new_owner
  get "/new-sitter", to: "users#new_sitter", as: :new_sitter
  get "/user-sign-in", to: "users#sign_in"
  post "/new-owner", to: "users#owner_create"
  post "/new-sitter", to: "users#sitter_create"
  get "/account/:id", to: "users#account", as: :account
  get "/sitter-profile/:id", to: "users#sitter_profile"
  get "/sitter-profile/:id/edit", to:"users#edit_sitter"
  post "/edit-sitter/:id", to:"users#update_sitter_profile"
  get "/sitters", to: "users#sitters"
  post "/select-sitter/:id", to: "users#select_sitter"

  get "/new-client", to: "users#new_client"
  post "/new-client", to: "users#new_client"


  post "/sign-in", to: "sessions#sign_in", as: :sign_in
  get "/sign-out", to: "sessions#sign_out", as: :sign_out

  get "/new-pet", to: "pets#new", as: :new_pet
  post "/new-pet", to: "pets#create"
  get "/report/:id", to: "pets#report", as: :report
  post "/report/:id", to: "reports#create_report"

  get "/images", to: "instagram#show"

  get "/pet/:id", to: "pets#show"

  get "yappytrailsclub/about", to: "reports#about", as: :about






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
