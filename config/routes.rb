Rails.application.routes.draw do
  #Routes for sign in
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  
  get '/' => "special#home"
  get '/learn' => 'special#learn'
  # Routes for the Message resource:
  # CREATE
  get '/new_message' => 'messages#new'
  get '/create_message' => 'messages#create'

  # READ
  get '/messages' => 'messages#index'
  get '/messages/:id' => 'messages#show'

  # UPDATE
  get '/messages/:id/edit' => 'messages#edit'
  get '/messages/:id/update' => 'messages#update'

  # DELETE
  get '/messages/:id/destroy' => 'messages#destroy'
  #------------------------------

  # Routes for the School resource:
  # CREATE
  get '/new_school' => 'schools#new'
  get '/create_school' => 'schools#create'

  # READ
  get '/schools' => 'schools#index'
  get '/schools/:id' => 'schools#show'

  # UPDATE
  get '/schools/:id/edit' => 'schools#edit'
  get '/schools/:id/update' => 'schools#update'

  # DELETE
  get '/schools/:id/destroy' => 'schools#destroy'
  #------------------------------

  # Routes for the Person resource:
  # CREATE
  get '/new_person' => 'people#new'
  get '/create_person' => 'people#create'

  # READ
  get '/people' => 'people#index'
  get '/people/:id' => 'people#show'
  get '/teachers' => 'people#teachers'
  get '/students' => 'people#students'

  # UPDATE
  get '/people/:id/edit' => 'people#edit'
  get '/people/:id/update' => 'people#update'

  # DELETE
  get '/people/:id/destroy' => 'people#destroy'
  #------------------------------

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
