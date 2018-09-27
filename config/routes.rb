Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :dream do
    resources :project do
      resources :task, only: [:create, :update, :destroy]
    end
  end

  get '/top', to: 'top#index'
  get '/daily', to: 'daily#index'

end
