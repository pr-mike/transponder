require 'generators/transponder'
require 'generators/transponder/resource_helpers'

module Transponder
  module Generators
    class InstallGenerator < Base
      include Transponder::Generators::ResourceHelpers

      def create_services
        directory 'services', 'app/assets/javascripts/services'
      end

      def create_presenters
        directory 'presenters', 'app/assets/javascripts/presenters'
      end

      def create_helpers
        directory 'helpers', 'app/assets/javascripts/helpers'
      end

      def add_setup
        template 'setup.coffee', "app/assets/javascripts/#{js_app_name}-setup.coffee"
      end 

      def add_manifest
        template 'manifest.coffee', "app/assets/javascripts/#{js_app_name}-manifest.coffee"
      end
    end
  end
end