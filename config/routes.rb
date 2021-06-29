Rails.application.routes.draw do
  resources :users, except: [:edit, :update, :delete]
  resources :songs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
