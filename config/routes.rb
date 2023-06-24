Rails.application.routes.draw do
  devise_for :users, path: 'api/v1/', controllers: {
    sessions: 'sessions',
  }

  namespace :api, default: { format: :json } do
    namespace :v1 do
      resources :products
      resources :users
    end
  end
end
