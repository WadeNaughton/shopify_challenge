Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  resources :items
  resources :warehouses
  post '/warehouse/:warehouse_id/item/:id', to: 'itemwarehouses#create'
end
