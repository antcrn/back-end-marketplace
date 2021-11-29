Rails.application.routes.draw do
  resources :avatars, only: [:create, :update, :destroy]
  resources :real_estates
  devise_for :users,
                controllers:
                  {
                    sessions: 'users/sessions',
                    registrations: 'users/registrations'
                  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
