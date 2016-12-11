# git_tags plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-git_tags)
[![Twitter: @fsaragoca](https://img.shields.io/badge/contact-@fsaragoca-blue.svg?style=flat)](https://twitter.com/fsaragoca)

[![CircleCI](https://circleci.com/gh/fsaragoca/fastlane-plugin-git_tags.svg?style=svg)](https://circleci.com/gh/fsaragoca/fastlane-plugin-git_tags)

## Getting Started

This project is a [fastlane](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-git_tags`, add it to your project by running:

```bash
fastlane add_plugin git_tags
```

## About git_tags

List git tags sorted by `taggerdate`

## Example

```
git_tags # Returns an array of tags sorted by creation date
git_tags(limit: 2) # Returns two most recent tags
```

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/PluginsTroubleshooting.md) doc in the main `fastlane` repo.

## Using `fastlane` Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Plugins.md).

## About `fastlane`

`fastlane` is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
