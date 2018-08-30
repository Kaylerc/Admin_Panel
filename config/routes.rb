Rails.application.routes.draw do
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

  get 'students/show'
  get 'students/new'
  get 'students/edit'
  get 'students/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
