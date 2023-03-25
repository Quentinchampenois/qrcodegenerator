module Qrcode
  class QrcodeGenerator < ApplicationService
    attr_accessor :format, :filename

    def initialize(input, format=:png)
      @input = input
      @format = format
      @filename = "qrcode_#{Time.now.strftime("%d-%m-%H-%M-%S")}.#{format}"
      @qrcode = RQRCode::QRCode.new(@input)
    end

    def call
      render_qrcode
    end

    def render_qrcode
      case @format
      when :png
        get_png
      when :svg
        get_svg
      else
        get_png
      end
    end
    private

    def get_svg
      @qrcode.as_svg(
        color: "000",
        shape_rendering: "crispEdges",
        module_size: 11,
        standalone: true,
        use_path: true
      )
    end

    def get_png
      @qrcode.as_png(
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
      )&.to_data_url
    end
  end
end
