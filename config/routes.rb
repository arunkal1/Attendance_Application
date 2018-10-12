Rails.application.routes.draw do

  root 'groups#index'
  get 'attendances/date'

  resources :groups
  resources :students
  resources :attendances

end
