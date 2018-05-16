require 'fastlane_core/ui/ui'
require 'java-properties'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class GradlePropertiesHelper
      def self.load_property(path, key)
        properties = JavaProperties.load(path)
        value = properties[key]
        value
      end
    end
  end
end
