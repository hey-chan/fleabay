Rails.application.routes.draw do
  resources :listings
  devise_for :users
  root to: "pages#home"
  get "/success", to: "payments#success", as: "payment_success"
  post "/payments/webhooks", to: "payments#webhook", as: "webhook"
end
