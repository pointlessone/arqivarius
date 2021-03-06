# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arqivarius/version'

Gem::Specification.new do |spec|
  spec.name          = "arqivarius"
  spec.version       = Arqivarius::VERSION
  spec.authors       = ["Alexander Mankuta"]
  spec.email         = ["cheba@pointlessone.org"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "unf"
  spec.add_runtime_dependency "fog"
  spec.add_runtime_dependency "plist"
  spec.add_runtime_dependency "ffi"
  spec.add_runtime_dependency "ffi-xattr"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
