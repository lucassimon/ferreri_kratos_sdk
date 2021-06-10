require_relative 'lib/ferreri_kratos_sdk/version'

Gem::Specification.new do |spec|
  spec.name          = "ferreri_kratos_sdk"
  spec.version       = FerreriKratosSdk::VERSION
  spec.authors       = ["Lucas"]
  spec.email         = ["lucassrod@gmail.com"]

  spec.summary       = "Lib for use to connect with Kratos Micro Service"
  spec.description   = "This lib uses ory-kratos-client or a rest api client for access the Kratos micro service"
  spec.homepage      = "https://www.ferreri.co"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ferreri/ferreri_kratos_sdk"
  spec.metadata["changelog_uri"] = "https://github.com/ferreri/ferreri_kratos_sdk/CHANGELONG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty'
end
