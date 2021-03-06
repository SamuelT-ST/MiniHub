Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static#index'

  get 'users/new' => 'users#new', as: :new_user

  post 'users' => 'users#create'

  # log in page with form:
  get '/login'     => 'sessions#new'

  # create (post) action for when log in form is submitted:
  post '/login'    => 'sessions#create'

  # delete action to log out:
  get '/logout' => 'sessions#destroy'

end
