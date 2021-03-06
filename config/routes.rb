ScholarTree::Application.routes.draw do
  get "home/index"
  devise_for :users # , :controllers => {:registrations => "my_devise/registrations"}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  resources :goals

  resources :journal_entries
  post 'journal_entries_calendar/events' => 'journal_entries#calendar_events_json'
  get 'journal_entries_calendar/events' => 'journal_entries#calendar_events_json'
  get 'journal_entries/:id/json'        => 'journal_entries#entry_json'

  get 'photos/add' => 'photos#add'
  get 'photos/show/:id' => 'photos#show'
  get 'photos/test/:id' => 'photos#test'
  post 'photos/create'  => 'photos#create'

  get   'photo_journal/show'    => 'photo_journal#show'
  post  'photo_journal/show'    => 'photo_journal#show'
  get   'photo_journal/entries' => 'photo_journal#entries'
  get   'photo_journal/photos'  => 'photo_journal#photos'
  get   'photo_journal/media'   => 'photo_journal#media'

  get   'media/add', to: 'media#add'
  get   'media/query', to: 'media#query', as: 'media_query'
  get   'media/:id', to: 'media#show', as: 'media'
  post   'media/new', to: 'media#new', as: 'media_new'
  get   'media/image/:id/style/:style', to: 'media#image', as: 'media_image'

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
