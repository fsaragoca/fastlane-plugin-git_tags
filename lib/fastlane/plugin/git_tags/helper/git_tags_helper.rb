module Fastlane
  module Helper
    class GitTagsHelper
      # class methods that you define here become available in your action
      # as `Helper::GitTagsHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the git_tags plugin helper!")
      end
    end
  end
end
