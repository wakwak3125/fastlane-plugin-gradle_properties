require 'fastlane/action'
require_relative '../helper/gradle_properties_helper'

module Fastlane
  module Actions
    class GradlePropertiesAction < Action
      def self.run(params)
        Helper::GradlePropertiesHelper.load_property(
          params[:path],
          params[:property_name].to_sym
        )
      end

      def self.description
        "Read properties in your Fastfile easily"
      end

      def self.authors
        ["Ryo Sakaguchi"]
      end

      def self.return_value
        "Property value"
      end

      def self.details
        ""
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :path,
            env_name: "PROPERTY_FILE_PATH",
            description: "File path",
            optional: false,
            type: String,
            default_value: "gradle.properties"
            ),
          FastlaneCore::ConfigItem.new(
            key: :property_name,
            env_name: "PROPERTY",
            description: "Property name that you want to retrieve",
            optional: false,
            type: String
            )
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
