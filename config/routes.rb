LoginDevice::Engine.routes.draw do
  resources :login_records
  root to: "login_records#index"
end
