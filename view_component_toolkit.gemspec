# frozen_string_literal: true

require_relative 'lib/view_component_toolkit/version'

Gem::Specification.new do |spec|
  spec.name = 'view_component_toolkit'
  spec.version = ViewComponentToolkit::VERSION
  spec.authors = ['Nathan Clark']
  spec.email = ['nathanclark80@gmail.com']

  spec.summary = 'A toolkit for working with ViewComponents in Rails'
  spec.description = 'A toolkit for working with ViewComponents in Rails'
  spec.homepage = "https://github.com/nathanclark/ViewComponentToolkit"
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'


  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "https://github.com/nathanclark/ViewComponentToolkit"
  spec.metadata['changelog_uri'] = "https://github.com/nathanclark/ViewComponentToolkit"
    spec.metadata["github_repo"] = "ssh://github.com/nathanclark/ViewComponentToolkit"
  spec.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/nathanclark"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.files = Dir['{app,config,db,lib,spec}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  ## DEPENDENCIES
  spec.add_dependency 'rails', '>= 7.0'
  spec.add_dependency 'view_component', '>= 2.0'
  spec.add_development_dependency 'actionview'
  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'actionpack'
  spec.add_development_dependency 'railties'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'lookbook', '~> 2.0'
spec.add_development_dependency "debug", ">= 1.0.0"
spec.add_development_dependency "listen", "~> 3.8"
end
