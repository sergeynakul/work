Rails.application.routes.draw do
  resources :employees
  resources :departments
  get 'search', to: 'search#search'
  root 'employees#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
