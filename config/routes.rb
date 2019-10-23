Rails.application.routes.draw do
  resources :authors do
    resources :books 
  end
  resources :colglibraries do
    resources :books
  end

  resources :books
end
