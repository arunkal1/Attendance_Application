Rails.application.routes.draw do
  root 'groups#index'
  get 'attendances/date'
  # get 'attendances/index'
  # get 'attendances/show'
  # get 'attendances/new'
  # get 'attendances/edit'
  # get 'attendances/create'
  # get 'attendances/update'
  # get 'attendances/destroy'
  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/edit'
  # get 'students/create'
  # get 'students/update'
  # get 'students/destroy'
  # get 'groups/index'
  # get 'groups/show'
  # get 'groups/new'
  # get 'groups/edit'
  # get 'groups/create'
  # get 'groups/update'
  # get 'groups/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :groups
  resources :students
  resources :attendances

end
