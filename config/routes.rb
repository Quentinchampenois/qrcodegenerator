Rails.application.routes.draw do
  get 'qrcode/index'
  get "/qrcode/generate", controller: "qrcode#generate", as: "qrcode_generate"
  get "/qrcode/download", controller: "qrcode#download", as: "qrcode_download"

  root "qrcode#index"
end
