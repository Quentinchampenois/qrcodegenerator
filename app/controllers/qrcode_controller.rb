class QrcodeController < ApplicationController
  def index
  end

  def generate
    @query = params["query"] || ""

    @svg = qrcode_to_png(@query).to_data_url
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

  def qrcode_to_png(query)
    qrcode = RQRCode::QRCode.new(query)

    qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      file: nil,
      fill: "white",
      module_px_size: 6,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 350
    )
  end
end
