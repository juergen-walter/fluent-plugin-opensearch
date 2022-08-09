# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'fluent-plugin-opensearch'
  s.version       = '1.0.7'
  s.authors       = ['Hiroshi Hatake']
  s.email         = ['cosmo0920.wp@gmail.com']
  s.description   = %q{Opensearch output plugin for Fluent event collector}
  s.summary       = s.description
  s.homepage      = 'https://github.com/fluent/fluent-plugin-opensearch'
  s.license       = 'Apache-2.0'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  if s.respond_to?(:metadata)
    s.metadata["changelog_uri"] = "https://github.com/fluent/fluent-plugin-opensearch/blob/master/History.md"
  end

  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)

  s.add_runtime_dependency 'fluentd', '>= 0.14.22'
  s.add_runtime_dependency 'opensearch-ruby'
  s.add_runtime_dependency "aws-sdk-core", "~> 3"
  s.add_runtime_dependency "faraday_middleware-aws-sigv4"
  s.add_runtime_dependency "faraday-excon"
  s.add_runtime_dependency "faraday-typhoeus"


  s.add_development_dependency 'rake', '>= 0'
  s.add_development_dependency 'webrick', '~> 1.7.0'
  s.add_development_dependency 'webmock', '~> 3'
  s.add_development_dependency 'test-unit', '~> 3.3.0'
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'flexmock', '~> 2.0'
end
