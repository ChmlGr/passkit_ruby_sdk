require_relative 'lib/passkit_sdk/version'

Gem::Specification.new do |spec|
  spec.name = 'passkit_sdk'
  spec.version = PasskitSdk::VERSION
  spec.authors = ['Passkit', 'Ximena Garcia']
  spec.email = ['ximena.garcia@moduscreate.com']

  spec.summary = %q{gRPC SDK for Passkit API}
  spec.description = %q{gRPC SDK for Passkit API}
  spec.homepage = 'https://github.com/ChmlGr/passkit_ruby_sdk'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables = []
  spec.require_paths = ['lib']

  spec.add_dependency 'grpc'
end
