Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :dream do
    resources :project
  end

  get '/top', to: 'top#index'
  get '/daily', to: 'daily#index'

end
