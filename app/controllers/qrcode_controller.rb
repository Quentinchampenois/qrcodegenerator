class QrcodeController < ApplicationController
  def index
  end

  def generate
    @query = params["query"] || ""
    @qrcode = Qrcode::QrcodeGenerator.new(@query)
    @qrcode_gen = @qrcode.render_qrcode
  end
end
