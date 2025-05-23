# frozen_string_literal: true

require_relative 'lib/sample_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'sample_gem'
  spec.version       = SampleGem::VERSION
  spec.authors       = ['Kirill Mokevnin']
  spec.email         = ['mokevnin@gmail.com']
  spec.summary       = 'Example summary'
  spec.description   = 'Example description'
  spec.homepage      = 'https://github.com/hexlet-boilerplates/ruby-gem'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/hexlet-boilerplates/ruby-gem'
  spec.metadata['changelog_uri'] = 'https://github.com/hexlet-boilerplates/ruby-gem'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'
end
