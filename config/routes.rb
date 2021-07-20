Rails.application.routes.draw do
  resources :listings
  devise_for :users
  root to: "pages#home"
  get '/success', to: "payments#success", as: "payment_success"
  post '/payments/webhook', to: "payments#webhook", as: "webhook"
  post '/payments', to: "payments#create_payment_intent", as: "create_payment_intent"
end
