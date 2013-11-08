# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'got_skillz/version'

Gem::Specification.new do |spec|
  spec.name          = "got_skillz"
  spec.version       = GotSkillz::VERSION
  spec.authors       = ["mrodrigues"]
  spec.email         = ["mrodrigues.uff@gmail.com"]
  spec.description   = %q{Track your skillz with GitHub commit messages, and list where and when your learned them.}
  spec.summary       = %q{Got skillz? Track them with this!}
  spec.homepage      = "https://github.com/mrodrigues/got_skillz"
  spec.license       = "MIT"

  spec.add_runtime_dependency "octokit"

  spec.files         = `git ls-files`.split($/) - ['img/skillz.jpg']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
