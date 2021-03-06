Rails.application.routes.draw do

  resources :subscribers

  get "subscribers/new"
  get "subscribers/index"

  get 'static_pages/news'

  get 'static_pages/contact'

  get 'static_pages/help'

  get 'static_pages/index'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'welcome/index'

  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/news',    to: 'static_pages#news',    via: 'get'
  match '/contact',    to: 'static_pages#contact',    via: 'get'
  match '/index',    to: 'static_pages#index',    via: 'get'
  match '/home',    to: 'static_pages#home',    via: 'get'
  match '/about',    to: 'static_pages#about',    via: 'get'
  match '/', to: 'static_pages#home', via: 'get'
  match '/signup',  to: 'subscribers#new',            via: 'get'
  match '/subscribers',  to: 'subscribers#index',            via: 'get'
  resources :static_pages

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

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
