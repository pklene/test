Rails.application.routes.draw do

  get 'profile/index'
  get "create_acc/index"
  get "login_page/index"
  get "welcome/index"

  resources :houses

  root "welcome#index"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
