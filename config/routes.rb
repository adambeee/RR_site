RRProject::Application.routes.draw do

  resources :messages

  devise_for :users
  devise_for :admins
  root 'pages#home'
  resources :users #nests tasks by users
  resources :tasks #standard tasks views
  resources :notifications
  resources :messages

  get '/contact', :to => 'pages#contact'
  get '/about', :to => 'pages#about'
  get '/help', :to => 'pages#help'
  get '/signup', :to => 'users#new'
  get 'riorunner', :to => 'pages#riorunner'
  get '/users/sign_up', :to => 'devise/registrations#new'
  get '/posttask', :to => 'pages#posttask'
  get '/myriorunner/:id', :to => 'users#my_rio_runner', as: 'myriorunner'
  get '/mymessages/:id', :to => 'messages#my_messages', as: 'mymessages'
  get '/mytasks/:id', :to => 'tasks#my_tasks', as: 'mytasks'


  #match 'tagged' => 'tasks#tagged', :as => 'tagged'





  # You can have the root of your site routed with "root"



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
