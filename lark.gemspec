require_relative 'lib/lark/version'

Gem::Specification.new do |spec|
  spec.name          = "lark-sdk"
  spec.version       = Lark::VERSION
  spec.authors       = ["Sean Dong"]
  spec.email         = ["sindon@gmail.com"]

  spec.summary       = %q{Lark(飞书) API SDKs for ruby}
  spec.description   = %q{Lark(飞书) API SDKs for ruby https://open.feishu.cn}
  spec.homepage      = "https://github.com/seandong/lark-ruby-sdk"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.1.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/seandong/lark-ruby-sdk"
  spec.metadata["changelog_uri"] = "https://github.com/seandong/lark-ruby-sdk"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'http', '0.8.0'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'redis'

  # spec.add_development_dependency "bundler", ">= 1.13"
  # spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "minitest", "~> 5.10"
end
