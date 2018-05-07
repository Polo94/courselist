Rails.application.routes.draw do

  devise_for :users

  resources :products do
    member do
      patch :complete
    end
  end

  root 'products#index'
end
