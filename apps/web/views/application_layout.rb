module Web
  module Views
    class ApplicationLayout
      include Web::Layout

      def script_for(bundle)
        path = Web::Application.configuration.root.join('webpack-assets.json')
        file = File.read(path)
        json = JSON.parse(file)
        json[bundle]['js']
      end
    end
  end
end
