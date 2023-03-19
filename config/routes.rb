Rails.application.routes.draw do
  get 'qrcode/index'
  get 'qrcode/generate'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "qrcode#index"
end
