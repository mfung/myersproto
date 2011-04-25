module Dragonfly
  module Analysis
    class ImageMagickAnalyser

      include ImageMagickUtils
      include Configurable

      def width(temp_object)
        identify(temp_object)[:width]
      end

      def height(temp_object)
        identify(temp_object)[:height]
      end

      def aspect_ratio(temp_object)
        attrs = identify(temp_object)
        attrs[:width].to_f / attrs[:height]
      end

      def portrait?(temp_object)
        attrs = identify(temp_object)
        attrs[:width] <= attrs[:height]
      end

      def landscape?(temp_object)
        attrs = identify(temp_object)
        attrs[:width] >= attrs[:height]
      end

      def depth(temp_object)
        identify(temp_object)[:depth]
      end

      def number_of_colours(temp_object)
        details = raw_identify(temp_object, '-verbose -unique')
        details[/Colors: (\d+)/, 1].to_i
      end
      alias number_of_colors number_of_colours

      def format(temp_object)
        identify(temp_object)[:format]
      end

    end
  end
end
