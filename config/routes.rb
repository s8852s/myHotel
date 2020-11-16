Rails.application.routes.draw do
  resources :rooms do
    resources :customers
  end
end
