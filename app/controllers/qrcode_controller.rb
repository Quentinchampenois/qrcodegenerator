class QrcodeController < ApplicationController
  def index
  end

  def generate
    @query = params["query"] || ""
    @filename = "qrcode_#{Time.now.strftime("%d_%m_%H_%M")}.png"

    @svg = Qrcode::QrcodeGenerator.call(@query)
  end
end
