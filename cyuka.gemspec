# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
#data = File.expand_path('../data', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cyuka/version'

Gem::Specification.new do |spec|
  spec.name          = "cyuka"
  spec.version       = Cyuka::VERSION
  spec.authors       = ["lengshuiyulangcn"]
  spec.email         = ["li.ning@i.mbox.nagoya-u.ac.jp"]
  spec.description   = %q{converter of simplifired Chinese and Japanese character}
  spec.summary       = %q{converter}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = [".gitignore",
						"LICENSE.txt",
						"README.md",
						"Gemfile",
						"data/cn2ja.data",
						"data/ja2cn.data",
						"lib/cyuka/version.rb",
						"lib/cyuka.rb",
						"cyuka.gemspec",
						"Rakefile",
						]
#  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib","data"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
