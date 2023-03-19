Rails.application.routes.draw do
  get 'qrcode/index'
  get "/qrcode/generate", controller: "qrcode#generate", as: "qrcode_generate"

  root "qrcode#index"
end
