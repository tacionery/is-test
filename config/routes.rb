Rails.application.routes.draw do

  root "students#index"

  resources :students
  resources :courses
  resources :classrooms

end
