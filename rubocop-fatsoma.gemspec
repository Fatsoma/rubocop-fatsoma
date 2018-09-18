# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/fatsoma/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-fatsoma'
  spec.summary = 'Fatsoma specific code style checking'
  spec.description = 'Fatsoma specific code style checking'
  spec.homepage = 'https://github.com/Fatsoma/rubocop-fatsoma'
  spec.authors = ['Fatsoma Dev Team']
  spec.email = ['development@fatsoma.com']
  spec.licenses = ['MIT']

  spec.version = RuboCop::Fatsoma::Version::STRING
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
    'Rakefile'
  ]
  spec.test_files = spec.files.grep(%r{^spec/})
  spec.extra_rdoc_files = ['MIT-LICENSE.md', 'README.md']

  spec.add_development_dependency('rubocop', '0.49.0')
  spec.add_development_dependency('rake', '~> 10.1')
  spec.add_development_dependency('rspec', '~> 3.0')
  spec.add_development_dependency('simplecov', '~> 0.8')
  spec.add_development_dependency('pry')
end
