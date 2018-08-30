Rails.application.routes.draw do


  resources :students

  get 'cohort/new'
  get 'cohort/edit'
  get 'cohort/index'
  get 'cohort/show'

  get 'courses/new'
  get 'courses/edit'
  get 'courses/index'
  get 'courses/show'

  get 'instructors/new'
  get 'instructors/edit'
  get 'instructors/index'
  get 'instructors/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
