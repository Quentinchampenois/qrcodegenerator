class QrcodeController < ApplicationController
  def index
  end

  def generate
    @query = params["query"] || ""

    @svg = qrcode_to_svg(@query)
  end

  private

  def qrcode_to_svg(query)
    qrcode = RQRCode::QRCode.new(query)

    qrcode.as_svg(
      color: "000",
      shape_rendering: "crispEdges",
      module_size: 11,
      standalone: true,
      use_path: true
    )
  end
end
