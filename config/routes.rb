Rails.application.routes.draw do
  resources :avatars

  resources :real_estates

  devise_for :users,
                controllers:
                  {
                    sessions: 'users/sessions',
                    registrations: 'users/registrations'
                  }
  
  resources :users do
    resources :real_estates, only: [ :index ]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
