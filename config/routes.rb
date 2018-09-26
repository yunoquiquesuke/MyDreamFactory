Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :dreams do
    resources :projects
  end

  get '/top', to: 'top#index'
  get '/daily', to: 'daily#index'

end
