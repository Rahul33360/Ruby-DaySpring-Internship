# -*- encoding: utf-8 -*-
# stub: moderate 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "moderate".freeze
  s.version = "0.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org", "changelog_uri" => "https://github.com/rameerez/moderate/blob/main/CHANGELOG.md", "homepage_uri" => "https://github.com/rameerez/moderate", "source_code_uri" => "https://github.com/rameerez/moderate" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["rameerez".freeze]
  s.bindir = "exe".freeze
  s.date = "2024-11-03"
  s.description = "Moderate user-generated content by adding a simple validation to block bad words in any text field. Good for applications where you need to maintain a clean and respectful environment in comments, posts, or any other user input.".freeze
  s.email = ["rubygems@rameerez.com".freeze]
  s.homepage = "https://github.com/rameerez/moderate".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.5.22".freeze
  s.summary = "Moderate and block bad words from your Rails app".freeze

  s.installed_by_version = "4.0.6".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rails>.freeze, [">= 7.0.0".freeze])
end
