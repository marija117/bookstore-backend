Rails.application.routes.draw do
  devise_for :users,
              path: '',
              path_names: {
                sign_in: 'login',
                sign_out: 'logout',
                registration: 'register',
              },
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              },
              defaults: { format: :json }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
  resources :genres
end
