class QrcodeController < ApplicationController
  def index
  end

  def generate
    @query = params["query"] || ""

    @svg = :: Qrcode::QrcodeGenerator.call(@query)
  end
end
