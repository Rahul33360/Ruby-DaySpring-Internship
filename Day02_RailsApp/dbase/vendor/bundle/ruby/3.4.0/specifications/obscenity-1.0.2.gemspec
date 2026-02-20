# -*- encoding: utf-8 -*-
# stub: obscenity 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "obscenity".freeze
  s.version = "1.0.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thiago Jackiw".freeze]
  s.date = "2013-05-30"
  s.description = " Obscenity is a profanity filter gem for Ruby/Rubinius, Rails (through ActiveModel), and Rack middleware ".freeze
  s.email = "tjackiw@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "http://github.com/tjackiw/obscenity".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "1.8.25".freeze
  s.summary = "Obscenity is a profanity filter gem for Ruby/Rubinius, Rails (through ActiveModel), and Rack middleware".freeze

  s.installed_by_version = "3.6.9".freeze

  s.specification_version = 3

  s.add_development_dependency(%q<shoulda>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.12".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<jeweler>.freeze, ["~> 1.8.3".freeze])
  s.add_development_dependency(%q<activemodel>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<rack>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
end
