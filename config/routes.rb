Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reads, only: [:create]
    end
  end

  root to: 'hotreads#index'
end
