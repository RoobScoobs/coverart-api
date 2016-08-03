Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  resources :albums, only: [:index, :show, :create, :update, :destroy]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
