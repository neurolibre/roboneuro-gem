# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whedon/version'

Gem::Specification.new do |spec|
  spec.name          = "roboneuro"
  spec.version       = Whedon::VERSION
  spec.authors       = ["Agah Karakuzu"]
  spec.email         = ["agahkarakuzu@gmail.com"]
  spec.summary       = "A collection of command-line utilities to manage NeuroLibre submissions."
  spec.homepage      = "https://github.com/neurolibre/roboneuro-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bibtex-ruby", "~> 6.0.0"
  spec.add_dependency "dotenv"
  spec.add_dependency "latex-decode"
  spec.add_dependency "github-linguist", "~> 5.3"
  spec.add_dependency "openjournals-nameable"
  spec.add_dependency "octokit", "~> 4.20"
  spec.add_dependency "rest-client", ">= 1.8"
  spec.add_dependency "redcarpet", "~> 3.3"
  spec.add_dependency "tilt"
  spec.add_dependency "thor", "~> 0.19"
  spec.add_dependency "unicode", "~> 0.4.4"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "vcr", "~> 6.0"
  spec.add_development_dependency "webmock", "~> 3.11.2"
  spec.add_development_dependency "nokogiri", "= 1.10.8"
end
