Rails.application.routes.draw do

  root 'pages#home'
  # root 'sessions#new'

  get 'register' => 'users#new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

    


  resources :cohorts
  resources :courses
  resources :students
  resources :instructors
  resources :users

  get 'students/edit'
  # get 'sessions/new'
  # get 'sessions/create'


  #
  # get 'cohorts/new'
  # get 'cohorts/edit'
  # get 'cohorts/index'
  # get 'cohorts/show'

  # get 'courses/new'
  # get 'courses/edit'
  # get 'courses/index'
  # get 'courses/show'

  # get 'instructors/new'
  # get 'instructors/edit'
  # get 'instructors/index'
  # get 'instructors/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
