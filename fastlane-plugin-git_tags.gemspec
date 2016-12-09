# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/git_tags/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-git_tags'
  spec.version       = Fastlane::GitTags::VERSION
  spec.author        = %q{Fernando Saragoca}
  spec.email         = %q{fsaragoca@me.com}

  spec.summary       = %q{List git tags sorted by taggerdate}
  spec.homepage      = "https://github.com/fsaragoca/fastlane-plugin-git_tags"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.111.0'
end
