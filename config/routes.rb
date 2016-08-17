Rails.application.routes.draw do
  get 'sessions/new'

  get 'doctors/new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :doctors

  resources :patients do 
    resources :current_history_records
  end 

  post 'patients/:patient_id/current_history_records/:id/edit(.:format)' => 'current_history_records#edit'
  post 'current_history_records/:current_history_record_id/before_history_record/edit(.:format)' => 'before_history_records#edit'
  post 'before_history_records/:before_history_record_id/nervous_system/edit(.:format)' => 'nervous_systems#edit'
  post 'nervous_systems/:nervous_system_id/assist_check/edit(.:format)' => 'assist_checks#edit'

  resources :current_history_records do
      resource :before_history_record
  end 

  resources :before_history_records do
      resource :nervous_system
  end 
  
  resources :nervous_systems do
      resource :assist_check
  end 

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

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
