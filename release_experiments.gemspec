require_relative 'lib/release_experiments/version'

Gem::Specification.new do |spec|
  spec.name          = "release_experiments"
  spec.version       = ReleaseExperiments::VERSION
  spec.authors       = ["Kirt Fitzpatrick"]
  spec.email         = ["kirt.fitzpatrick@gmail.com"]

  spec.summary       = %q{Dummy gem.}
  spec.description   = %q{Dummy Gem.}
  spec.homepage      = "https://github.com/kirtfitzpatrick/release_experiments"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kirtfitzpatrick/release_experiments"
  spec.metadata["changelog_uri"] = "https://github.com/kirtfitzpatrick/release_experiments/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
