$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

Gem::Specification.new do |spec|
  spec.name = 'rubocop-fatsoma'
  spec.summary = 'Fatsoma specific code style checking'
  spec.description = 'Fatsoma specific code style checking'
  spec.homepage = 'https://github.com/Fatsoma/rubocop-fatsoma'
  spec.authors = ['Fatsoma Dev Team']
  spec.email = ['development@fatsoma.com']
  spec.licenses = ['MIT']

  spec.version = File.read('./VERSION')
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.0.0'

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

  spec.add_dependency 'rubocop', '>= 0.49', '< 0.51'
  spec.add_dependency 'version', '~> 1.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.8'
end
