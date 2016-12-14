module Fastlane
  module Actions
    class GitTagsAction < Action
      def self.run(params)
        tags = Actions.sh("git tag | xargs -I@ git log --format=format:\"%ai @%n\" -1 @ | sort | awk '{print $4}'", log: $verbose).chomp.split("\n").reverse
        tags = tags.take(params[:limit]) if params[:limit]
        tags
      end

      def self.description
        "List git tags"
      end

      def self.authors
        ["Fernando Saragoca"]
      end

      def self.return_value
        "Array of git tags sorted by taggerdate"
      end

      def self.details
        "List git tags sorted by `taggerdate`"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :limit,
                                       env_name: 'GIT_TAGS_LIMIT',
                                       description: 'Limit number of tags to return',
                                       is_string: false,
                                       optional: true)
        ]
      end

      def self.is_supported?(platform)
        true
      end

      def self.example_code
        [
          'git_tags',
          'git_tags(limit: 10)'
        ]
      end

      def self.category
        :source_control
      end
    end
  end
end
