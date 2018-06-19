Rails.application.routes.draw do
  devise_for :users, controllers: {
   registrations: 'users/registrations',
   sessions: 'users/sessions'
 }

  resource :homes
  resources  :students
  resources  :courses
  resources  :cohorts
  resources  :students_cohorts
  root  'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
